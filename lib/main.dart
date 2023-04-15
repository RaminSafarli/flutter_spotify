import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/widgets/tab.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify",
      theme: ThemeData(
        fontFamily: "Gotham",
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white30,
          selectedLabelStyle: TextStyle(fontSize: 17.0),
          unselectedLabelStyle: TextStyle(fontSize: 15.00),
        ),
      ),
      home: const Scaffold(
        body: TabBarWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
