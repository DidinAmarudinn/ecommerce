import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/provider/auth_provider.dart';
import 'package:ecommerce/screens/home/main_screen.dart';
import 'package:ecommerce/screens/sign_up_screen.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:ecommerce/widget/custom_header_widget.dart';
import 'package:ecommerce/widget/custom_textfielld_widget.dart';
import 'package:ecommerce/widget/loading_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
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
            isLoading
                ? LoadingButton()
                : CustomButtonWidget(
                    buttonName: "Sign In",
                    height: 50,
                    width: double.infinity,
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      bool value = await authProvider.login(
                          _textEditingControllerEmail.text,
                          _textEditingControllerPassword.text);

                      if (value) {
                        Get.off(() => MainScreen(initialPage: 0));
                      } else {
                        setState(() {
                          isLoading = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login Gagal"),
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
