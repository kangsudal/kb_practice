import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_ranking/stockModel.dart';
import 'package:intl/intl.dart';

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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = [
      'Top Gainers',
      'Top Losers',
      'Outstanding Volume',
      'Most Volatile',
      'Large-cap',
    ];
    double appBarHeight = 100;

    List<Stock> stocks =
        dummyData.map((mapItem) => Stock.fromMap(mapItem)).toList();

    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      height: appBarHeight,
                      // color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.black,
                      child: ListTile(
                        // tileColor: Colors.black,
                        title: Text(
                          'Tickers',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Last price',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '%Change',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: stocks.length,
                        itemBuilder: (context, idx) {
                          return ListTile(
                            leading: Image.network(
                              stocks[idx].logo,
                              width: 45,
                            ),
                            title: Text(
                              stocks[idx].sb,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(stocks[idx].ISNM,style: TextStyle(color: Colors.grey,),),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    myFormat.format(stocks[idx].prc),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '${stocks[idx].change.toString()}%',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(color: Colors.grey,);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TabBarAppBar(
              buttonTitles: buttonTitles,
              appBarHeight: appBarHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarAppBar extends StatelessWidget {
  final double appBarHeight;

  const TabBarAppBar({
    super.key,
    required this.buttonTitles,
    required this.appBarHeight,
  });

  final List<String> buttonTitles;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: appBarHeight,
        // color: Colors.purple, //Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Stocks Ranking',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: buttonTitles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 69, 71, 82),
                      ),
                      child: Center(
                        child: Text(
                          buttonTitles[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
