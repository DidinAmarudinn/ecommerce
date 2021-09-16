import 'package:ecommerce/common/theme.dart';
import 'package:flutter/material.dart';

class CategoriesContainerWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final int selectedCategories;
  final int index;
  const CategoriesContainerWidget({
    Key? key,
    required this.title,
    required this.onTap,
    required this.selectedCategories,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin / 2),
      child: TextButton(
        onPressed: () {
          onTap();
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          backgroundColor:
              selectedCategories == index ? primaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: selectedCategories == index
                    ? primaryColor
                    : subtitleTextColor),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 13,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
