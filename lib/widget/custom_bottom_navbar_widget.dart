import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        notchMargin: 10,
        color: backgroundColor4,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            onTap(0);
                          },
                          child: Image.asset(
                            iconHome,
                            width: 21,
                            color: currentIndex == 0
                                ? primaryColor
                                : backgroundColor5,
                          )),
                      MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            onTap(1);
                          },
                          child: Image.asset(
                            iconChat,
                            width: 20,
                            color: currentIndex == 1
                                ? primaryColor
                                : backgroundColor5,
                          )),
                    ],
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(2);
                        },
                        child: Image.asset(
                          iconWishlist,
                          width: 20,
                          color: currentIndex == 2
                              ? primaryColor
                              : backgroundColor5,
                        )),
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          onTap(3);
                        },
                        child: Image.asset(
                          iconProfile,
                          width: 18,
                          color: currentIndex == 3
                              ? primaryColor
                              : backgroundColor5,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
