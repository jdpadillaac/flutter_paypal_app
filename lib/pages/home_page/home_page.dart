import 'package:flutter/material.dart';
import 'package:paypal_design/pages/home_page/widgets/home_actions/home_actions.dart';
import 'package:paypal_design/pages/home_page/widgets/home_content/home_content.dart';
import 'package:paypal_design/pages/home_page/widgets/navigation_bar/btn_navigation_bar.dart';
import 'package:paypal_design/pages/home_page/widgets/home_header/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  static String routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeNavigationBar(),
      body: Container(child: _homeBody()),
    );
  }

  Widget _homeBody() {
    return ListView(
      children: [
        HomeHeader(),
        HomeActions(),
        HomeContent(),
      ],
    );
  }
}
