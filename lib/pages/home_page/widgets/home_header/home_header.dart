import 'package:flutter/material.dart';
import 'package:paypal_design/constants/app_colors.dart';
import 'package:paypal_design/pages/home_page/widgets/home_header/home_header_content.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPrimaryColor,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0)),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF42A5F5),
            Color(0xFF1976D2),
            Color(0xFF0D47A1),
          ],
        ),
      ),
      height: 280,
      width: 500,
      child: HomeHeaderContent(),
    );
  }
}
