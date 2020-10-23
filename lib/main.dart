import 'package:flutter/material.dart';
import 'package:paypal_design/pages/login_page/login_page.dart';
import 'package:paypal_design/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paypal Design',
      initialRoute: LoginPage.routeName,
      routes: routes,
    );
  }
}
