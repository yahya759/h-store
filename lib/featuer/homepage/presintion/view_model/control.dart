import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/featuer/homepage/data/apiSerice.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/state.dart';

class ProdectControl extends Cubit<ProdectState> {
  ProdectControl() : super(InitialState());

  Future<void> getData() async {
    print("entered get data");
    emit(LoadingState());
    try {
      final value = await Apiservice(dio: Dio()).getData();
      final products = value.map((e) => Prodect.fromJson(e)).toList();
      emit(SuccessState(products));
    } catch (e) {
      print("the are an error");
      print(e.toString());
      emit(FailureState(e.toString()));
    }
  }
}
