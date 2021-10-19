import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:ecommerce/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderProfileWidget extends StatelessWidget {
  final User user;
  const HeaderProfileWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor1,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            defaultMargin,
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(
                  user.profilePhotoUrl!,
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo, " + (user.name ?? ""),
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      user.username ?? "",
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(() => SignInScreen());
                },
                child: Image.asset(
                  buttonExit,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
