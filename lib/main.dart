import 'package:flutter/material.dart';
import 'package:my_website/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibrahim Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 5,
            centerTitle: false,
            shadowColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 50,
            ),
            bodySmall: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          )),
      home: const HomePage(),
    );
  }
}
