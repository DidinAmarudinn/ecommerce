import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:ecommerce/provider/auth_provider.dart';
import 'package:ecommerce/widget/content_edit_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.close,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Profile",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
          ),
        ],
      );
    }

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    User user = authProvider.user.data!.user!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: ContentEditProfileWidget(
        user: user,
        textEditingControllerEmail: textEditingControllerEmail,
        textEditingControllerName: textEditingControllerName,
        textEditingControllerUsername: textEditingControllerUsername,
      ),
    );
  }
}
