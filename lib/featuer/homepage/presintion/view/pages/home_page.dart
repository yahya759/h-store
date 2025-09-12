import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/homepage/presintion/view/widget/adds.dart';
import 'package:hstore/featuer/homepage/presintion/view/widget/prodect_card.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/control.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/state.dart';
import 'package:hstore/featuer/search/presintion/view/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProdectControl, ProdectState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                    children: [
                      Image.asset("images/letter-h.png" , width: 30 , height: 30,),
                      SizedBox(width: 5,),
                       Text("Store", style: styles.font22),
                    ],
                   ),
                    SizedBox(),
                    Icon(Icons.shopping_cart_outlined),
                  ],
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    context.topage(Search());
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery.sizeOf(context).width,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 10),
                        Text("Search for products", style: styles.font12),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 120, child: FullScreenAdSlider()),
                SizedBox(height: 20),
                state is SuccessState
                    ? Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return ProdectCard(
                              prodect: state.products,
                              index: index,
                            );
                          },
                          itemCount: state.products.length,
                        ),
                      )
                    : Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        );
      },
    );
  }
}
