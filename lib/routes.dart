import 'package:flutter/material.dart';
import 'package:flutter_homepage/Screens/homepageScreen.dart';
import 'package:flutter_homepage/Screens/logoutScreen.dart';

final Map<String, WidgetBuilder> routes = {
  homepageScreen.routeName: (context) => homepageScreen(),
  logoutScreen.routeName: (context) => logoutScreen()
};
