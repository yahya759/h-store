import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hstore/featuer/homepage/presintion/view/pages/home_page.dart';


class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // code
    Timer(Duration(seconds: 3)
        ,()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body:Center(
        child: Text('log in ' , style:  TextStyle(fontSize: 33 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
