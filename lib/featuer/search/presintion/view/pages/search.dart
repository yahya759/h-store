import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/search/presintion/view/wedgit/searchCard.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60 , left: 20 , right: 20),
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back_ios)),
                  Text("Setting" , style: styles.font18,),
                  SizedBox()
                ],
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  suffixIcon: Icon(Icons.abc_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView.builder(
                  itemCount: 12,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context , indext){
                  return Searchcard();
                }),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
