import 'package:ecommerce/common/api_path.dart';
import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/widget/alert_widget.dart';
import 'package:ecommerce/widget/content_detil_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class DetailProductScreen extends StatefulWidget {
  final ProductModel productModel;
  const DetailProductScreen({Key? key, required this.productModel})
      : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  List<String> familiarShoes = [
    imageShoes,
    imageShoes2,
    imageShoes3,
    imageShoes4,
    imageShoes5,
    imageShoes6,
    imageShoes7,
  ];
  int currentIndex = 0;
  bool isWishlist = false;
  @override
  Widget build(BuildContext context) {
    Future<void> showSuccesDialog() async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertWidget();
        },
      );
    }

    indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xFFc4c4c4),
        ),
      );
    }

    header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              right: defaultMargin,
              left: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: backgroundColor1,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                )
              ],
            ),
          ),
          CarouselSlider(
            items: widget.productModel.galleries!
                .map(
                  (e) => Image.network(
                    e.url!,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.productModel.galleries!
                .asMap()
                .map((key, value) => MapEntry(key, indicator(key)))
                .values
                .toList(),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor7,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            Expanded(
              child: ContentDetilProductWidget(
                familiarShoes: familiarShoes,
                productModel: widget.productModel,
                addToCart: () {
                  showSuccesDialog();
                },
                onPressedWishlist: () {
                  setState(() {
                    isWishlist = !isWishlist;
                  });
                  if (isWishlist) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: secondaryColor,
                        content: Text(
                          "Has been add to the wishlist",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: alertColor,
                        content: Text(
                          "Has been removed from the wishlist",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
                },
                isWishlist: isWishlist,
              ),
            )
          ],
        ),
      ),
    );
  }
}
