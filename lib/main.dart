import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/pages/home_page.dart';

void main() async {
  //initialise the hive
  await Hive.initFlutter();
  //create new storage
  await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData(
          primaryColor: Colors.grey[300],
          primaryColorDark: Colors.grey[500],
        ));
  }
}
