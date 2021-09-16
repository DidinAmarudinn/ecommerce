import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/chat_bubble.dart';
import 'package:ecommerce/widget/chat_input_widget.dart';
import 'package:ecommerce/widget/product_preview_chat.dart';
import 'package:flutter/material.dart';

class DetailChatScreen extends StatefulWidget {
  const DetailChatScreen({Key? key}) : super(key: key);

  @override
  _DetailChatScreenState createState() => _DetailChatScreenState();
}

class _DetailChatScreenState extends State<DetailChatScreen> {
  @override
  Widget build(BuildContext context) {
    headerDetailChat() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                imageShopeLogoOnline,
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shoes Store",
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Online",
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    content() {
      return ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            text: "Hi, this item is still ready ?",
            isSender: true,
            isProductPreview: true,
          ),
          ChatBubble(
            text: "Good morning, This item only available in size 42 and 43",
            isSender: false,
            isProductPreview: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: headerDetailChat(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductPreviewChat(),
          ChatInputWidget(),
        ],
      ),
      body: content(),
    );
  }
}
