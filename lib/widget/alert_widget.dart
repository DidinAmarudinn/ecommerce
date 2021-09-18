import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      child: AlertDialog(
        backgroundColor: backgroundColor3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: primaryTextColor,
                  ),
                ),
              ),
              Image.asset(
                iconSuccess,
                width: 100,
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Text(
                "Hurray :)",
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Text(
                "Item added successfully",
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              CustomButtonWidget(
                buttonName: "View Cart",
                onPressed: () {},
                height: 50,
                width: 154,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
