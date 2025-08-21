import 'package:flutter/material.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/show_jop/presention/view/show_prodect.dart';

class ProdectCard extends StatelessWidget {
  const ProdectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 5,
        itemBuilder: (context , indext){
        return  GestureDetector(
          onTap: (){
            context.topage(ShowProdect());
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(14),
          width: MediaQuery.sizeOf(context).width,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.20),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("the prodect name" , style: styles.font18,),
                  Row(
                    children: [
                      Text("2.6"),
                      SizedBox(width: 5,),
                      Icon(Icons.star , color: Colors.amber,)
                    ],
                  )
                ],
              )
            ],
          ),
                ),
        );
      }),
    );
  }
}
