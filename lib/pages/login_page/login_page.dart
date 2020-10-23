import 'package:flutter/material.dart';
import 'package:paypal_design/constants/app_colors.dart';
import 'package:paypal_design/pages/home_page/home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  static String routeName = 'login';
  BuildContext generalContext;
  @override
  Widget build(BuildContext context) {
    generalContext = context;
    return Scaffold(
      body: _scaffolBody(),
    );
  }

  Widget _scaffolBody() {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: SingleChildScrollView(
            child: Column(
              children: [_paypalLogo(), _loginForm()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _paypalLogo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 60.0),
        child: Image.asset('assets/images/logo.png'));
  }

  Widget _loginForm() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
      child: Column(
        children: [
          _loginFormEmailInput(),
          _loginFormPasswordInput(),
          _loginFormSigInButton(),
          _loginFormProblemText(),
          _loginFormRegisterText()
        ],
      ),
    );
  }

  Widget _loginFormEmailInput() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Ingresa tu email',
          )),
    );
  }

  Widget _loginFormPasswordInput() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      child: TextFormField(
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Ingresa tu contraseña',
          )),
    );
  }

  Widget _loginFormSigInButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 0),
      child: GestureDetector(
        onTap: _loginFormSigInButtonOnTap(),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Iniciar sesión',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginFormProblemText() {
    final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 18.0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Problemas al iniciar sesión?',
          style: textStyle,
        ),
      ],
    );
  }

  Widget _loginFormRegisterText() {
    final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 18.0);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registrate',
            style: textStyle,
          ),
        ],
      ),
    );
  }

  dynamic _loginFormSigInButtonOnTap() {
    return () {
      Navigator.pushNamed(generalContext, HomePage.routeName);
    };
  }
}
