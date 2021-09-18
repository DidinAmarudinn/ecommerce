import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmpetyCart extends StatelessWidget {
  const EmpetyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            "Opss! Your Cart is Empty ",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: defaultMargin / 2,
          ),
          Text(
            "Let's find your favorite shoes",
            style: subtitleTextStyle,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          CustomButtonWidget(
            buttonName: "Explore Store",
            onPressed: () {
              Get.offAll(
                () => HomeScreen(),
              );
            },
            height: 44,
            width: 150,
          ),
        ],
      ),
    );
  }
}
