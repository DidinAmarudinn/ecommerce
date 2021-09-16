import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/detail_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailChatScreen());
      },
      child: Container(
        margin: EdgeInsets.only(
          top: defaultMargin / 2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageShopLogo,
                  width: 54,
                ),
                SizedBox(
                  width: defaultMargin / 2,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoes Store",
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        "Good night, this item on sale with 60% cut",
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: defaultMargin / 3,
            ),
            Divider(
              color: dividerColor,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
