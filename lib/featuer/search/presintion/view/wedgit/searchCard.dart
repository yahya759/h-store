import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';

class Searchcard extends StatelessWidget {
  const Searchcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.25),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("images/add_phone.png", fit: BoxFit.cover),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title", style: styles.font22),
                  Text("discraption", style: styles.font12),
                ],
              ),
             
            ],
          ),
           Container(
            margin: EdgeInsets.only(top: 10 , bottom: 10),
            width: MediaQuery.sizeOf(context).width,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
