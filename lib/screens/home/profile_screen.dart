import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:ecommerce/provider/auth_provider.dart';
import 'package:ecommerce/widget/content_profile_widget.dart';
import 'package:ecommerce/widget/header_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    User user = authProvider.user.data!.user!;
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderProfileWidget(
            user: user,
          ),
          ContentProfileWidget(),
        ],
      ),
    );
  }
}
