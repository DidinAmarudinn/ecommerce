import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';

class EmpetyWishlistWidget extends StatelessWidget {
  const EmpetyWishlistWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            wishtListImage,
            width: 80,
          ),
          SizedBox(height: defaultMargin),
          Text(
            "You don't have dream shoes?",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: defaultMargin / 2,
          ),
          Text(
            "Lets find your favorite shoes",
            style: subtitleTextStyle,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          CustomButtonWidget(
            buttonName: "Explore Store",
            onPressed: () {},
            height: 44,
            width: 150,
          ),
        ],
      ),
    );
  }
}
