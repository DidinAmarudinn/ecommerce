import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/components/cart_tle.dart';
import 'package:flutter/material.dart';

class ContentCart extends StatelessWidget {
  const ContentCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        CartTile(),
      ],
    );
  }
}
