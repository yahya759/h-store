
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/featuer/login/presention/view_model/control/statelogin.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class logincontrol extends Cubit<loginstate> {
  logincontrol() : super(Inal());

  var supabase = Supabase.instance.client;

  Map<String, dynamic> user = {};



  Future<void> login(String email, String password) async {
    emit(lod());
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      emit(loginsecces(loginseccesed: "login secces"));
    } catch (e) {
      emit(loginfalier(loginfaliered: "Email or password is incorrect"));
    }
  }
  }