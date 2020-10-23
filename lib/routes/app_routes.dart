import 'package:flutter/material.dart';
import 'package:paypal_design/pages/home_page/home_page.dart';
import 'package:paypal_design/pages/login_page/login_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  HomePage.routeName: (context) => HomePage()
};
