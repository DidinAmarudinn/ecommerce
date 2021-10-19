import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/components/checkout_card.dart';
import 'package:ecommerce/widget/content_checkout_screen.dart';
import 'package:ecommerce/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          text: "Checkout Details",
          isLeading: true,
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: ContentCheckoutScreen(),
    );
  }
}
