import 'package:flutter/material.dart';
import './domain/fund/models/fund.model.dart';
import './app/pages/fund/show.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple[800],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      home: ShowFundPage(
        title: 'Flutter Demo Home Page',
        fund: Fund(name: "Bantayan Escapade"),
      ),
    );
  }
}
