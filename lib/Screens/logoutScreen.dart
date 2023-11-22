import 'package:flutter/material.dart';
import 'package:flutter_homepage/size_config.dart';

class logoutScreen extends StatelessWidget {
  static String routeName = "/sign_out";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      // 
    );
  }
}
