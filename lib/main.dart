import 'package:expense_manager_app/Providers/CardProvider.dart';
import 'package:expense_manager_app/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CardProvider>(
        create: (context) => CardProvider(),
        child: MaterialApp(
          theme: ThemeData(),
          home: const HomePage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
