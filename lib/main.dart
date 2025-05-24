import 'package:ezbuy/constraints/global_variable.dart';
import 'package:ezbuy/router.dart';
import 'package:ezbuy/screens/auth_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScreens(),
    );
  }
}