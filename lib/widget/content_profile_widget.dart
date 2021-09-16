import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentProfileWidget extends StatelessWidget {
  const ContentProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    menuItem(String text) {
      return Padding(
        padding: EdgeInsets.only(top: defaultMargin * 0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            ),
          ],
        ),
      );
    }

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                  child: menuItem("Edit Profile")),
              menuItem("Your Orders"),
              menuItem("Help"),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                "General",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              menuItem("Privacy Policy"),
              menuItem("Term of Service"),
              menuItem("Rate App"),
            ],
          ),
        ),
      ),
    );
  }
}
