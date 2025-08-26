import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/featuer/homepage/data/apiSerice.dart';
import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/state.dart';

class ProdectControl extends Cubit<ProdectState> {
  ProdectControl() : super(InitialState());

  List<Prodect> prodect = [];

  Future<void> getData() async {
    print("entered get data");
    emit(LoadingState());
    await Apiservice(dio: Dio())
        .getData()
        .then((value) {
          prodect = value.map((e) => Prodect.fromJson(e)).toList();
          emit(SuccessState());
        })
        .catchError((error) {
          print("the are an error rrrrrrrrrrrrrrrrrrr");
          print(error.toString());
          emit(FailureState());
        });
  }
}
