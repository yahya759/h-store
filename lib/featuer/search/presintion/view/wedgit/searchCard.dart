import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';

class Searchcard extends StatelessWidget {
   Searchcard({super.key , required this.prodect , required this.index});

 List<Prodect> prodect = [];
 int index;

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
                child: Image.asset("${prodect[index].image}", fit: BoxFit.cover),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${prodect[index].title}", style: styles.font22),
                  Text("${prodect[index].description}", style: styles.font12),
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
