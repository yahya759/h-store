import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back_ios)),
                Text("Sigup" , style: styles.font20,),
                SizedBox()
              ],
            );
  }
}