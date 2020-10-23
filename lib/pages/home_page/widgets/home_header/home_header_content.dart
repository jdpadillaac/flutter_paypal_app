import 'package:flutter/material.dart';

class HomeHeaderContent extends StatelessWidget {
  const HomeHeaderContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      child: Column(
        children: [
          _userProfile(),
          _userName(),
          _userBlance(),
          _userBlanceText(),
        ],
      ),
    );
  }

  Widget _userBlance() {
    return Padding(
      padding: EdgeInsets.only(bottom: 0, top: 30),
      child: Row(
        children: [
          Text("\$ 480.23",
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }

  Widget _userBlanceText() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5.0),
      child: Row(
        children: [
          Text("Disponible",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }

  Widget _userName() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
      child: Row(children: [
        Text(
          'Jonatan padilla',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ]),
    );
  }

  Widget _userProfile() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/min_logo.png',
            height: 70.0,
          ),
          Image.asset(
            'assets/images/user.png',
            height: 70.0,
          ),
        ],
      ),
    );
  }
}
