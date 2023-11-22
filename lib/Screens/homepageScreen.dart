import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_homepage/Component/HomePageComponent.dart';
import 'package:flutter_homepage/size_config.dart';

class homepageScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: HomePageComponent(),
    );
  }
}
