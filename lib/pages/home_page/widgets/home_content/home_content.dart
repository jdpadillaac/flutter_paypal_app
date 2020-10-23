import 'package:flutter/material.dart';
import 'package:paypal_design/constants/app_colors.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            _homeContentTitle(),
            _cardList(),
          ],
        ),
      ),
    );
  }

  Widget _cardList() {
    return Column(
      children: [
        _cardListIitem(),
        _cardListIitem(),
        _cardListIitem(),
      ],
    );
  }

  Widget _cardListIitem() {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Card(
        child: ListTile(
            leading: FlutterLogo(),
            title: Text('title'),
            trailing: Icon(Icons.list)),
      ),
    );
  }

  Widget _homeContentTitle() {
    final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 18);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Actividad',
          style: TextStyle(
              color: AppThirdColor,
              fontWeight: FontWeight.w400,
              fontSize: 20,
              letterSpacing: 1),
        ),
        Row(
          children: [
            Text('Ver todo', style: textStyle),
            Icon(Icons.list, color: Colors.grey),
          ],
        )
      ],
    );
  }
}
