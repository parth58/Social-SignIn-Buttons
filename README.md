# social_signin_buttons

A  Flutter package for both android and iOS which provides Social signIn Buttons

## Screenshots

<![Image](screenshots/ss.png)
## Usage

[Example]()

To use this package :

* add the dependency to your [pubspec.yaml]() file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    social_signin_buttons:
```

### How to use

```dart
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

```


# License

    


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).