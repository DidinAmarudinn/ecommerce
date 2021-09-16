import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/home/main_screen.dart';
import 'package:ecommerce/screens/sign_up_screen.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:ecommerce/widget/custom_header_widget.dart';
import 'package:ecommerce/widget/custom_textfielld_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  static const routname = "/signInScreen";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _textEditingControllerEmail = TextEditingController();
  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultMargin),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeaderWidget(
              title: "Login",
              subTitle: "Sign in to continue",
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            CustomTextFieldWidget(
              label: "Email Address",
              hintText: "Your Email Address",
              icon: iconEmail,
              isObsured: false,
              controller: _textEditingControllerEmail,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            CustomTextFieldWidget(
              label: "Password",
              icon: iconPassword,
              hintText: "Your Password",
              isObsured: true,
              controller: _textEditingControllerPassword,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            CustomButtonWidget(
              buttonName: "Sign In",
              height: 50,
              width: double.infinity,
              onPressed: () {
                Get.to(() => MainScreen(initialPage: 0));
              },
            ),
            SizedBox(
              height: defaultMargin / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Text(
                    "Sign Up",
                    style: purpleTextStyle.copyWith(fontSize: 12),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
