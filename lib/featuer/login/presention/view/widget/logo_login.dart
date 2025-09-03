import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  const LogoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/letter-h.png" , width: 50 , height: 50,),
                Text("Store" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
              ],
            );
  }
}