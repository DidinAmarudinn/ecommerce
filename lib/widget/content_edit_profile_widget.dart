import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:flutter/material.dart';

class ContentEditProfileWidget extends StatelessWidget {
  final User user;
  final TextEditingController textEditingControllerName;
  final TextEditingController textEditingControllerUsername;
  final TextEditingController textEditingControllerEmail;
  const ContentEditProfileWidget(
      {Key? key,
      required this.textEditingControllerName,
      required this.textEditingControllerUsername,
      required this.textEditingControllerEmail,
      required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    editProfileInput(
        TextEditingController controller, String text, String title) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              controller: controller,
              decoration: InputDecoration(
                hintText: text,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleTextColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(defaultMargin),
      width: double.infinity,
      child: Column(children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(user.profilePhotoUrl!),
              fit: BoxFit.fill,
            ),
          ),
        ),
        editProfileInput(textEditingControllerName, user.name ?? "", "Name"),
        editProfileInput(
            textEditingControllerUsername, user.username ?? "", "Username"),
        editProfileInput(textEditingControllerName, user.email ?? "", "Email"),
      ]),
    );
  }
}
