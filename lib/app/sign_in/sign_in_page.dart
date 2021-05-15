import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/signin_button.dart';
import 'package:time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker/services/auth.dart';

class SignInPage extends StatelessWidget {

  const SignInPage({Key key, @required this.auth}) : super(key: key);

  final AuthBase auth;

  Future<void> _signInAnonymously() async{
    try {
      await auth.signInAnonymously();
    } catch(e){
      print(e.toString());
    }
  }
  Future<void> _signInWithGoogle() async{
    try {
      await auth.signInWithGoogle();
    } catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48),
          SocialSignInButton(
            assetName: 'assets/images/google-logo.png',
            title: "Sign in with Google",
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: _signInWithGoogle,
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            assetName: 'assets/images/facebook-logo.png',
            title: "Sign in with Facebook",
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SignInButton(
            title: "Sign in with Email",
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          SizedBox(height: 8),
          Text(
            'or',
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          SignInButton(
            title: "Sign in Anonymously",
            textColor: Colors.black,
            color: Colors.lime[300],
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
