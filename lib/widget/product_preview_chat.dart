import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class ProductPreviewChat extends StatelessWidget {
  const ProductPreviewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      height: 74,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      decoration: BoxDecoration(
        color: backgroundColor6,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageShoes7,
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Curt Vision".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextStyle,
                ),
                Text(
                  "\$58",
                  style: princeTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            buttonClose,
            width: 22,
          )
        ],
      ),
    );
  }
}
