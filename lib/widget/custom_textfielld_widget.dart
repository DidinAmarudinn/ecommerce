import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? icon;
  final bool? isObsured;
  final TextEditingController? controller;
  const CustomTextFieldWidget(
      {Key? key,
      this.label,
      this.hintText,
      this.icon,
      this.controller,
      this.isObsured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    icon!,
                    width: 17,
                  ),
                  SizedBox(
                    width: defaultMargin / 2,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      controller: controller!,
                      obscureText: isObsured!,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText!,
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
