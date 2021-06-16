import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/app/home_page.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';
import 'package:time_tracker/services/auth.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User>(
        stream: auth.authStateChanges(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.active) {
            final User user = snapShot.data;
            if (user == null) {
              return SignInPage.create(context);
            } else {
              return HomePage();
            }
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
