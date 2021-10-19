import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class ItemShimmer extends StatelessWidget {
  const ItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
