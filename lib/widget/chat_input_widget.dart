import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class ChatInputWidget extends StatelessWidget {
  const ChatInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(children: [
        Expanded(
          child: Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin * 0.8,
              vertical: defaultMargin / 2,
            ),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextFormField(
                style: primaryTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: "Type message here....",
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Image.asset(
            buttonSend,
            width: 45,
          ),
        ),
      ]),
    );
  }
}
