import 'package:ecommerce/common/enum_state.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/provider/product_provider.dart';
import 'package:ecommerce/screens/detail_product_screen.dart';
import 'package:ecommerce/widget/components/product_tile.dart';
import 'package:ecommerce/widget/components/tile_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

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
        Consumer<ProductProvider>(builder: (context, state, _) {
          if (state.resultState == ResponseResult.HasData) {
            return Column(
                children: state.products
                    .map((e) => GestureDetector(
                          onTap: () {
                            Get.to(() => DetailProductScreen(productModel: e));
                          },
                          child: ProductNewArrivalsTile(
                            productModel: e,
                          ),
                        ))
                    .toList());
          } else if (state.resultState == ResponseResult.Loading) {
            return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                enabled: true,
                child: Column(children: [
                  TileShimmer(),
                  TileShimmer(),
                  TileShimmer(),
                  TileShimmer(),
                ]));
          } else if (state.resultState == ResponseResult.NoData) {
            return Center(
              child: Text(state.message),
            );
          } else if (state.resultState == ResponseResult.Error) {
            return Center(child: Text(state.message));
          } else {
            return Center(child: Text(''));
          }
        })
      ],
    );
  }
}
