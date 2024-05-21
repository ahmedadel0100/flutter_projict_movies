import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_movie/pages/home.dart';

import 'LoginorRigisterPage.dart';

class AuthPage extends StatelessWidget {
  static const String routename = 'authPage';

  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Navigator.of(context).pushNamed(Login.routename);
            return HomePage();
          } else {
            // Navigator.of(context).pushNamed(LoginPage.routename);
            return LoginorRigisterPage();
          }
        },
      ),
    );
  }
}
