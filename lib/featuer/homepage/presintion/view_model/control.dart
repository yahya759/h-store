import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/featuer/homepage/data/apiSerice.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/state.dart';

class ProdectControl extends Cubit<ProdectState> {
  ProdectControl() : super(InitialState());

  List<Prodect> allProducts = [];
  List<Prodect> filteredProducts = [];

  Future<void> getData() async {
    print("entered get data");
    emit(LoadingState());
    try {
      final value = await Apiservice(dio: Dio()).getData();
      final products = value.map((e) => Prodect.fromJson(e)).toList();
      allProducts = value.map((e) => Prodect.fromJson(e)).toList();
      emit(SuccessState(products));
    } catch (e) {
      print("the are an error");
      print(e.toString());
      emit(FailureState(e.toString()));
    }
  }

  void searchProducts(String query) {
 try{
   if (query.isEmpty) {
      filteredProducts = List.from(allProducts);
    } else {
      filteredProducts = allProducts
          .where(
            (product) =>
                product.title!.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }

    emit(SearchState(filteredProducts));
 }catch(e){
  print(e.toString());
 }
    
}
}