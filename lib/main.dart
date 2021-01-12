import 'package:amazon_clone_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Amazon UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith( 
        color: Colors.black,
      )

      ),
      home: HomeScreen(),
    );
  }
}


