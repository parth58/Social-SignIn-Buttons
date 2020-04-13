import 'package:flutter/material.dart';
import 'package:social_signin_buttons/social_signin_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.red,
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
 
  void _showButtonPressDialog(BuildContext context, String btn) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$btn Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInButton(
              Buttons.Google,
              onPressed: () {
                _showButtonPressDialog(context, 'Google');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {
                _showButtonPressDialog(context, 'Facebook');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Apple,
              onPressed: () {
                _showButtonPressDialog(context, 'Apple');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Microsoft,
              onPressed: () {
                _showButtonPressDialog(context, 'Microsoft');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.GitHub,
              text: "Sign up with GitHub",
              onPressed: () {
                _showButtonPressDialog(context, 'Github');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Twitter,
              text: "Sign In with Twitter",
              onPressed: () {
                _showButtonPressDialog(context, 'Twitter');
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
