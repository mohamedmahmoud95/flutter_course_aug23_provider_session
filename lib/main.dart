import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_provider_session/provider_example1/Counter.dart';
import 'package:flutter_course_aug23_provider_session/provider_example1/provider_example1.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderExample1(),
    );
  }
}