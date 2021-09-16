import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/categories_widget.dart';
import 'package:ecommerce/widget/components/product_tile.dart';
import 'package:ecommerce/widget/custom_header_widget.dart';
import 'package:ecommerce/widget/new_arivals_widget.dart';
import 'package:ecommerce/widget/popular_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategories = 0;

  @override
  Widget build(BuildContext context) {
    Widget categoriesWidget() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesContainerWidget(
                title: "All Shoes",
                index: 0,
                selectedCategories: selectedCategories,
                onTap: () {
                  setState(() {
                    selectedCategories = 0;
                  });
                },
              ),
              CategoriesContainerWidget(
                title: "Running",
                index: 1,
                selectedCategories: selectedCategories,
                onTap: () {
                  setState(() {
                    selectedCategories = 1;
                  });
                },
              ),
              CategoriesContainerWidget(
                title: "Training",
                index: 2,
                selectedCategories: selectedCategories,
                onTap: () {
                  setState(() {
                    selectedCategories = 2;
                  });
                },
              ),
              CategoriesContainerWidget(
                title: "Basketball",
                index: 3,
                selectedCategories: selectedCategories,
                onTap: () {
                  setState(() {
                    selectedCategories = 3;
                  });
                },
              ),
              CategoriesContainerWidget(
                title: "Hiking",
                index: 4,
                selectedCategories: selectedCategories,
                onTap: () {
                  setState(() {
                    selectedCategories = 4;
                  });
                },
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: SafeArea(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomHeaderWidget(
                        title: "Hallo, Sam",
                        subTitle: "@samganteng",
                      ),
                    ),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        image: DecorationImage(
                          image: AssetImage(
                            imageProfile,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              categoriesWidget(),
              SizedBox(
                height: defaultMargin,
              ),
              PopularWidget(),
              SizedBox(
                height: defaultMargin,
              ),
              NewArivalsWidget()
            ],
          ),
        ));
  }
}
