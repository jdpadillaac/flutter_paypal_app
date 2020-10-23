import 'package:flutter/material.dart';
import 'package:paypal_design/constants/app_colors.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppPrimaryColor,
        unselectedItemColor: AppBlackColor,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.supervisor_account_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings_outlined),
          ),
        ]);
  }
}
