import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/detail_product_screen.dart';
import 'package:ecommerce/widget/components/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewArivalsWidget extends StatelessWidget {
  const NewArivalsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Text(
            "New Arrivals",
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
        SizedBox(
          height: defaultMargin / 2,
        ),
        Column(children: [
          GestureDetector(
              onTap: () {
                Get.to(() => DetailProductScreen());
              },
              child: ProductNewArrivalsTile()),
          ProductNewArrivalsTile(),
          ProductNewArrivalsTile(),
          ProductNewArrivalsTile(),
          ProductNewArrivalsTile(),
          ProductNewArrivalsTile(),
        ])
      ],
    );
  }
}
