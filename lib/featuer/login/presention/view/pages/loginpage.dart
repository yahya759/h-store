import 'package:flutter/material.dart';
import 'package:hstore/const/botnavbar.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/featuer/login/presention/view/widget/logo_login.dart';
import 'package:hstore/featuer/regester/presention/view/pages/sigup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

String? email;
String? password;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            LogoLogin(),
            SizedBox(height: 50),
            Text(
              "Log in Store",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                label: Text("Email"),
                // prefixIcon: Icon(Icons.password_rounded),
                // suffixIcon: Icon(Icons.abc_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                label: Text("Password"),
                // prefixIcon: Icon(Icons.password_rounded),
                // suffixIcon: Icon(Icons.abc_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                if (email == "admin" && password == "123") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Login Successfully"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                    ),
                  );
                  context.topage(MyHomePage());
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Login failed"),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.red,
                  ),
                );
                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 20,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300.withOpacity(.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 45,
                    decoration: BoxDecoration(
                      // color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          context.topage(Sigup());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
