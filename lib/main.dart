import 'package:components/pages/home_page.dart';
import 'package:components/route_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: HomePage());
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}
