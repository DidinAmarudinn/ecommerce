import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  const CartTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin / 2),
      padding: EdgeInsets.symmetric(
        vertical: defaultMargin / 2,
        horizontal: defaultMargin - 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                child: Image.asset(
                  imageShoes3,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: defaultMargin / 2,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terrex Urbanflow",
                      style: primaryTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      "\$258",
                      style: princeTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    buttonAdd,
                    width: 16,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "2",
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  SizedBox(height: 2),
                  Image.asset(
                    buttonMin,
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                iconRemove,
                width: 10,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Remove",
                style: redTextStyle.copyWith(fontSize: 12, fontWeight: light),
              ),
            ],
          )
        ],
      ),
    );
  }
}
