import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';

class ShowProdect extends StatelessWidget {
  const ShowProdect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text("jop detailes", style: styles.font20),
                SizedBox(),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.20),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("images/add_phone.png" , fit:BoxFit.cover,),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("the prodect name", style: styles.font20),

                Row(
                  children: [
                    Text("2.6"),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(r"$14.6", style: styles.font18),
            SizedBox(height: 15),
            Text("datails about the prodect", style: styles.font12),
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.sizeOf(context).width,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("pay now" , style: styles.font18.copyWith(color: Colors.white), textAlign: TextAlign.center
                            ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
