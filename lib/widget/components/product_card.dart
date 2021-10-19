import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: bgCardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.network(
            productModel.galleries![0].url!,
            height: 150,
            width: 215,
            fit: BoxFit.cover,
          ),
          Column(
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
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
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
          )
        ],
      ),
    );
  }
}
