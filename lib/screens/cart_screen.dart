import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/cart_footer_widget.dart';
import 'package:ecommerce/widget/content_cart.dart';
import 'package:ecommerce/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          text: "Your Cart",
        ),
        preferredSize: Size.fromHeight(
          56,
        ),
      ),
      body: ContentCart(),
      bottomNavigationBar: CartFooterWidget(),
    );
  }
}
