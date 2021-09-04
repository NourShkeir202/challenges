import 'package:flutter/material.dart';
import 'package:untitled/challenges/challenge_2/moduels/home.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          color: Colors.white,
          elevation: 0,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 9,
            fontWeight: FontWeight.w400
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black
          ),
          headline3: TextStyle(
            color: Colors.green,
            fontSize: 12,
          ),
          headline4: TextStyle(
            color: Colors.grey,
            fontSize: 12
          )
        ),
      ),
      home: HomeScreen(),
    );
  }
}
