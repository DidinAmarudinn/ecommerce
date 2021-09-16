import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/widget/components/chat_tile.dart';
import 'package:ecommerce/widget/custom_app_bar.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:ecommerce/widget/empety_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: CustomAppBar(
          text: "Message Support",
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatTile(),
        ],
      ),
    );
  }
}
