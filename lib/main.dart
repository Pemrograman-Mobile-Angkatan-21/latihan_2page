import 'package:flutter/material.dart';
import 'package:project2/widget.dart';
import 'package:project2/widget2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          MyWidget.routeName: (context) => const MyWidget(),
          Widget2.routeName: (context) => const Widget2()
        },
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: const MyWidget());
  }
}
