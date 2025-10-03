import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hstore/featuer/homepage/presintion/view_model/control.dart';
import 'package:hstore/featuer/login/presention/view_model/control/cubitlogin.dart';
import 'package:hstore/featuer/splash/presention/view/pages/splashScreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://urtyrvsutivjumjhwsmh.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVydHlydnN1dGl2anVtamh3c21oIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMwODU3NTcsImV4cCI6MjA2ODY2MTc1N30.uFSsO1EclrDaNzr1roxh5W7ekc5sLlujWLaN13dygQ4",
  );
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
        BlocProvider(create: (context)=>logincontrol())
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
