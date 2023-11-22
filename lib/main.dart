import 'package:flutter/material.dart';
import 'package:flutter_homepage/Screens/homepageScreen.dart';
import 'package:flutter_homepage/routes.dart';

void main() async {
  runApp(MaterialApp(
    title: "Home",
    initialRoute: homepageScreen.routeName,
    routes: routes,
  ));
}
