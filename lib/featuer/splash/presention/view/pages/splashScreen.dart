import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hstore/featuer/login/presention/view/pages/loginpage.dart';



class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    // code
    Timer(Duration(seconds: 3)
        ,()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.blue,
      body:Center(
        child: Image.asset("images/letter-h.png",width: 150,height: 200,),
      ),
    );
  }
}
