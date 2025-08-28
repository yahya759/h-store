import 'package:flutter/material.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';
import 'package:hstore/featuer/show_jop/presention/view/show_prodect.dart';

class ProdectCard extends StatelessWidget {
  ProdectCard({super.key, required this.prodect , this.index = 0});
  List<Prodect> prodect;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    context.topage(ShowProdect(image: prodect[index].image ?? "",discription: prodect[index].description ?? "",price: prodect[index].price ?? "",title: prodect[index].title ?? "", rate: prodect[index].rating!.count ?? "1",));
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 4.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade200.withOpacity(.85),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network("${prodect[index].image}"),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "${prodect[index].title}",
                        style: styles.font16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(" \$${prodect[index].price}", style: styles.font14),
                  ],
                ),
              ],
            ),
    );
  }
}
