import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final bool isLeading;
  const CustomAppBar({Key? key, required this.text, this.isLeading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      title: Text(text),
      centerTitle: true,
      automaticallyImplyLeading: isLeading,
    );
  }
}
