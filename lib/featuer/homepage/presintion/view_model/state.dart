import 'package:hstore/featuer/homepage/data/models/prodect/prodect.dart';

abstract class ProdectState {}

class InitialState extends ProdectState {}

class LoadingState extends ProdectState {}

class SuccessState extends ProdectState {
  final List<Prodect> products;
  SuccessState(this.products);
}

class FailureState extends ProdectState {
  final String message;
  FailureState(this.message);
}
