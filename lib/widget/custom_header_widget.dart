import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const CustomHeaderWidget({Key? key, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style:
                primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            subTitle!,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
