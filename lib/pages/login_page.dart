import 'package:clone_practices/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
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
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_page.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username ",
                        hintText: "Enter Your Name",
                      ),
                      validator: (values) {
                        if (values!.isEmpty) {
                          return "Plese enter your user name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Passwed",
                        hintText: "Enter your Passwed",
                      ),
                      validator: (values) {
                        if (values!.isEmpty) {
                          return "plese enter Passwed";
                        } else if (values.length < 6) {
                          return "passwed lenth minimam is 6th";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        var isFormValidated =
                            _formkey.currentState?.validate() ?? false;
                        if (isFormValidated) {
                          Navigator.pushNamed(context, MyRoutes.homeroutes);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
