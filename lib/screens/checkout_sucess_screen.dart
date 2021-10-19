import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/home/main_screen.dart';
import 'package:ecommerce/widget/custom_app_bar.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChcekoutSuccessScreen extends StatelessWidget {
  const ChcekoutSuccessScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          text: "Checkout Success",
        ),
        preferredSize: Size.fromHeight(
          56,
        ),
      ),
      backgroundColor: backgroundColor3,
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconEmptyCart,
                width: 80,
              ),
              SizedBox(height: defaultMargin),
              Text(
                "You made a transaction",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Text(
                "Stay at home while we\nprepare your dream shoes",
                style: subtitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              CustomButtonWidget(
                buttonName: "Order Other Shoes",
                onPressed: () {
                  Get.off(() => MainScreen(
                        initialPage: 0,
                      ));
                },
                height: 44,
                width: 185,
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              CustomButtonWidget(
                buttonName: "View My Order",
                onPressed: () {},
                height: 44,
                isSecondary: true,
                width: 185,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
