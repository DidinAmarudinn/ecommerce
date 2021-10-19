import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductNewArrivalsTile extends StatelessWidget {
  final ProductModel productModel;
  const ProductNewArrivalsTile({Key? key, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              productModel.galleries![0].url!,
              fit: BoxFit.cover,
              height: 120,
              width: 120,
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
                  productModel.categoryModel!.name ?? "",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: defaultMargin / 4,
                ),
                Text(
                  productModel.name ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: defaultMargin / 4,
                ),
                Text(
                  "\$" + (productModel.price ?? 0.0).toString(),
                  style: princeTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
