import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/components/wishlist_tile.dart';
import 'package:ecommerce/widget/custom_app_bar.dart';
import 'package:ecommerce/widget/empety_wishlist_widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    content() {
      return ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          WishlistTile(),
          WishlistTile(),
          WishlistTile(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          text: "Favorite Shoes",
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: content(),
    );
  }
}
