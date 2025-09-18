import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/const/helper.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/control.dart';
import 'package:hstore/featuer/splash/presention/view/pages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
   bool isDarkMode = false;

  void toggleTheme(bool val) {
    setState(() {
      isDarkMode = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProdectControl()..getData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: isDarkMode ?  ThemeData.dark() : ThemeData.light(),
        home:  splash(),
      ),
    );
  }
}
