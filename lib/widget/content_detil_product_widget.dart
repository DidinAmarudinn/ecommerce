import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/detail_chat_screen.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentDetilProductWidget extends StatelessWidget {
  final List familiarShoes;
  final Function onPressedWishlist;
  final bool isWishlist;
  final Function addToCart;
  const ContentDetilProductWidget(
      {Key? key,
      required this.familiarShoes,
      required this.onPressedWishlist,
      required this.isWishlist,
      required this.addToCart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    familiarShoesCard(String assetName, index) {
      return Container(
        height: 54,
        width: 54,
        margin: EdgeInsets.only(
            left: index == 0 ? defaultMargin : defaultMargin / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(assetName),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: defaultMargin),
      margin: EdgeInsets.only(
        top: defaultMargin * 0.8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor1,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(defaultMargin),
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: Header,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TERREX URBAN LOW",
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          "Hiking",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onPressedWishlist();
                    },
                    child: Image.asset(
                      isWishlist ? buttonWishlistBlue : buttonWishlist,
                      width: 46,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            //NOTE : PRICE CONTAINER
            Container(
              padding: EdgeInsets.all(defaultMargin * 0.6),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price starts from",
                    style: primaryTextStyle,
                  ),
                  Text(
                    "\$100",
                    style: princeTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
            //Description
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                vertical: defaultMargin,
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: defaultMargin / 2,
                  ),
                  Text(
                    "The Better Comments extension will help you create more human-friendly comments in your code. With this extension, you will be able to categorise your annotations into",
                    style: subtitleTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            //familiar Shoes
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      "Familiar Shoes",
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultMargin / 2,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: familiarShoes
                          .asMap()
                          .map((key, value) =>
                              MapEntry(key, familiarShoesCard(value, key)))
                          .values
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            //button
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => DetailChatScreen());
                    },
                    child: Image.asset(
                      buttonChat,
                      height: 54,
                      width: 54,
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin * 0.8,
                  ),
                  Expanded(
                    child: CustomButtonWidget(
                      buttonName: "Add to Card",
                      onPressed: () {
                        addToCart();
                      },
                      height: 54,
                      width: double.infinity,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
