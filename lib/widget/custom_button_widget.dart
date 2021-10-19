import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonName;
  final Function onPressed;
  final double height;
  final double width;
  final bool? isSecondary;
  const CustomButtonWidget(
      {Key? key,
      required this.buttonName,
      required this.onPressed,
      required this.height,
      required this.width,
      this.isSecondary = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: isSecondary! ? Color(0xFF39374B) : primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonName,
          style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
              color: isSecondary! ? Color(0xFFB7B6BF) : primaryTextColor),
        ),
      ),
    );
  }
}
