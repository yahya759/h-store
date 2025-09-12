import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/control.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/state.dart';
import 'package:hstore/featuer/search/presintion/view/wedgit/searchCard.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<ProdectControl , ProdectState>(builder: (context , state){
      List<Prodect> prodect = [];
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
                  Text("Search" , style: styles.font18,),
                  SizedBox()
                ],
              ),
              SizedBox(height: 30,),
              TextFormField(
                onChanged: (value) {
                  context.read<ProdectControl>().searchProducts(value.toString());
                  state is SearchState ? prodect = state.prodect : print("fialer"); 
                  
                  print(prodect.length);
                },
                decoration: InputDecoration(
                  label: Text("product name"),
                  prefixIcon: Icon(Icons.search),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView.builder(
                  itemCount: context.read<ProdectControl>().filteredProducts.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context , indext){
                  return Searchcard(prodect: context.read<ProdectControl>().filteredProducts,index: indext,);
                }),
              )
              
            ],
          ),
        ),
      ),
    );
    });
  }
}
