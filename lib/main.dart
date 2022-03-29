import 'package:clone_practices/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:clone_practices/pages/Home_page.dart';
import 'package:clone_practices/pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginroutes,
      routes: {
        MyRoutes.homeroutes: (context) => Homepage(),
        MyRoutes.loginroutes: (context) => Loginpage(),
      },
    );
  }
}
