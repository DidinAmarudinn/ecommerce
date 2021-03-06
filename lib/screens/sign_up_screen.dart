import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/provider/auth_provider.dart';
import 'package:ecommerce/screens/home/main_screen.dart';
import 'package:ecommerce/screens/sign_in_screen.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:ecommerce/widget/custom_header_widget.dart';
import 'package:ecommerce/widget/custom_textfielld_widget.dart';
import 'package:ecommerce/widget/loading_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  static const routname = "/signUpScreen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _textEditingControllerEmail = TextEditingController();
  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  TextEditingController _textEditingControllerFullName =
      TextEditingController();
  TextEditingController _textEditingControllerUsername =
      TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeaderWidget(
              title: "Sign Up",
              subTitle: "Sign up and happy shoping",
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            CustomTextFieldWidget(
              label: "Full Name",
              hintText: "Your Full Name",
              icon: iconName,
              isObsured: false,
              controller: _textEditingControllerFullName,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            CustomTextFieldWidget(
              label: "Username",
              hintText: "Your Username",
              icon: iconUsername,
              isObsured: false,
              controller: _textEditingControllerUsername,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            CustomTextFieldWidget(
              label: "Email Adress",
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
            isLoading
                ? LoadingButton()
                : CustomButtonWidget(
                    buttonName: "Sign Up",
                    height: 50,
                    width: double.infinity,
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      bool value = await authProvider.register(
                          _textEditingControllerFullName.text,
                          _textEditingControllerUsername.text,
                          _textEditingControllerEmail.text,
                          _textEditingControllerPassword.text);

                      if (value) {
                        Get.off(() => MainScreen(initialPage: 0));
                      } else {
                        setState(() {
                          isLoading = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Registrasi Gagal"),
                          backgroundColor: alertColor,
                        ));
                      }
                    },
                  ),
            SizedBox(
              height: defaultMargin / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignInScreen());
                  },
                  child: Text(
                    "Sign In",
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
