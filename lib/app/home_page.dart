import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key,@required this.onSignOut,@required this.auth}) : super(key: key);

  final VoidCallback onSignOut;
  final AuthBase auth;

  Future<void> _signOut() async{
    try {
      await auth.signOut();
      onSignOut();
    } catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          TextButton(
              onPressed: _signOut,
              child: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
