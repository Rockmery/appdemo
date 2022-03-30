import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/login_page.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username ",
                    hintText: "Enter Your Name",
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Passwed",
                    hintText: "Enter your Passwed",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
