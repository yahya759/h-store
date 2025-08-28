import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';

class ShowProdect extends StatelessWidget {
   ShowProdect({super.key , required this.image , required this.title , required this.discription , required this.price , required this.rate});

  String image;
  String title;
  String discription;
  dynamic  price;
  dynamic  rate;

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
                Text("jop detailes", style: styles.font18),
                SizedBox(),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.20),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(image, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(title, style: styles.font20 , overflow: TextOverflow.ellipsis,)),

                Row(
                  children: [
                    SizedBox(
                      // width: 50,
                      child: Text(rate.toString() ,)),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("\$${price.toString()}", style: styles.font18),
            SizedBox(height: 15),
            Expanded(
              child: SizedBox(
                child: Text(discription, style: styles.font12  ,),
              ),
            ),
           
            
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.sizeOf(context).width,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Add to cart",
                  style: styles.font18.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
