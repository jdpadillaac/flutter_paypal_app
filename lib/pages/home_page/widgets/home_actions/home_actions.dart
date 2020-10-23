import 'package:flutter/material.dart';
import 'package:paypal_design/constants/app_colors.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 180,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Row(
            children: [
              _actionBox(),
              SizedBox(
                width: 15,
              ),
              _actionBoxOutline()
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionBoxOutline() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      height: 120,
      width: 105,
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.save_alt_outlined,
              color: AppPrimaryColor,
            ),
            Text(
              'Solicitar dinero',
              style: TextStyle(
                color: AppPrimaryColor,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _actionBox() {
    return Container(
      decoration: BoxDecoration(
        color: AppThirdColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(0, 112, 186, 1),
            Color.fromRGBO(21, 70, 160, 1),
          ],
        ),
      ),
      height: 120,
      width: 105,
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
            ),
            Text(
              'Enviar dinero',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
