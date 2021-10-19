import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/enum_state.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/provider/product_provider.dart';
import 'package:ecommerce/screens/detail_product_screen.dart';
import 'package:ecommerce/widget/components/item_shimmer.dart';
import 'package:ecommerce/widget/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:provider/provider.dart';

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
          child: Consumer<ProductProvider>(builder: (context, state, _) {
            if (state.resultState == ResponseResult.HasData) {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: defaultMargin),
                scrollDirection: Axis.horizontal,
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  ProductModel productModel = state.products[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => DetailProductScreen(
                            productModel: productModel,
                          ));
                    },
                    child: ProductCard(
                      productModel: productModel,
                    ),
                  );
                },
              );
            } else if (state.resultState == ResponseResult.Loading) {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                enabled: true,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, __) => ItemShimmer(),
                  itemCount: 6,
                ),
              );
            } else if (state.resultState == ResponseResult.NoData) {
              return Center(
                child: Text(state.message),
              );
            } else if (state.resultState == ResponseResult.Error) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: Text(''));
            }
          }),
        )
      ],
    );
  }
}
