import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_ranking/stock_ranking_model.dart';
import 'package:intl/intl.dart';
import 'package:stock_ranking/stock_ranking_page.dart';
import 'package:stock_ranking/yodonmall_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1e1e1e),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StockRankingPage(),
                  ),
                );
              },
              child: Text('Stocks Ranking Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => YodonmallPage(),
                  ),
                );
              },
              child: Text(
                'Yodonmall',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
