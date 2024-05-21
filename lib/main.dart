import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_movie/pages/splash_screan.dart';
import 'package:new_movie/user_page/profile.dart';

import 'auth_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: Colors.amber[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Splash_screan.routename,
      routes: {
        Splash_screan.routename: (context) => Splash_screan(),
        AuthPage.routename: (context) => AuthPage(),
        ProfilePage.routename: (context) => ProfilePage(),
      },
    );
  }
}
