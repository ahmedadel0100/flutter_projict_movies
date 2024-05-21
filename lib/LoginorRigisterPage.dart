import 'package:flutter/cupertino.dart';
import 'package:new_movie/pages/register_page.dart';

import 'user_page/login_page.dart';

class LoginorRigisterPage extends StatefulWidget {
  const LoginorRigisterPage({super.key});

  @override
  State<LoginorRigisterPage> createState() => _LoginorRigisterPageState();
}

class _LoginorRigisterPageState extends State<LoginorRigisterPage> {
  bool showlogin = true;

  void togglepage() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return LoginPage(onTap: togglepage);
    } else {
      return RigisterPage(
        onTap: togglepage,
      );
    }
  }
}
