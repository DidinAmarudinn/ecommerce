import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/detail_product_screen.dart';
import 'package:ecommerce/widget/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Text(
            "Popular Products",
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
        SizedBox(
          height: defaultMargin / 2,
        ),
        Container(
          height: 278,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: defaultMargin),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => DetailProductScreen());
                },
                child: ProductCard(
                  imageUrl:
                      "assets/image_shoes" + (index + 2).toString() + ".png",
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
