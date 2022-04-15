import 'package:flutter/material.dart';
import 'domain/pool/models/pool.model.dart';
import './app/pages/pool/show.page.dart';

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
      home: ShowPoolPage(
        title: 'Flutter Demo Home Page',
        pool: Pool(name: "Bantayan Escapade"),
      ),
    );
  }
}
