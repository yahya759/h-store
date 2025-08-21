import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/homepage/data/apiSerice.dart';
import 'package:hstore/featuer/homepage/presintion/view/widget/adds.dart';

import 'package:hstore/featuer/homepage/presintion/view/widget/prodect_card.dart';
import 'package:hstore/featuer/search/presintion/view/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("H Store" , style: styles.font22,) , 
                SizedBox(),
                Icon(Icons.shopping_cart_outlined)
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                context.topage(Search());
                Apiservice(dio: Dio()).getData().then((value) {
                  print("objectttttttttttttttttttttttttttttttttttttttttttttttttt");
                  print(value[1]["title"]);
                  print("objectttttttttttttttttttttttttttttttttttttttttttttttttt");
                }).catchError((error) {
                  print("Error: $error");
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.sizeOf(context).width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(.85),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey.shade600),
                    SizedBox(width: 10),
                    Text("Search for products", style: styles.font12),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
           SizedBox(height: 120,child: FullScreenAdSlider()),
            SizedBox(height: 20),
            ProdectCard(),
          ],
        ),
      ),
    );
  }
}
