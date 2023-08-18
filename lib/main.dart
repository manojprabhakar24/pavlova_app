import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My New Recipe',
      home: buildHomePage('Strawberry Pavlova Recipe'),
    );
  }

  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
            fontSize: 30, letterSpacing: 0.5, fontWeight: FontWeight.w600),
      ),
    );

    const subTitle = Text(
      'Pavlova is a meringue-based dessert. Originating in either Australia or New Zealand in the early 20th century,\n it was named after the Russian ballerina .'
          'Anna Pavlova, \n Pavlova features a crisp crust and soft, light inside topped with fruit and whipped cream',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Georgia', fontSize: 25),
    );

    var stars = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[600],
        ),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '178 Reviews',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                fontSize: 20,
                letterSpacing: 0.5,
                color: Colors.black),
          )
        ],
      ),
    );

    const descTextStyle = TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        height: 2,
        fontSize: 18);
    final iconsList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                 const Text('Prep'),
                  const Text('25min')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.green[500],
                  ),
                  Text('Cook:'),
                  Text('1hr')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  Text('Feeds:'),
                  Text('4-6')
                ],
              ),
            ],
          ),
        ));

    final leftColumn = Container(
      child: Column(
        children: [titleText, subTitle, ratings, iconsList],
      ),
    );

    final mainImage = Image.asset("images/pavlova.jpg"); // Added Image

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          height: 600,
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width: 400,
                  child: leftColumn,
                ),
                mainImage
              ],
            ),
          ),
        ),
      ),
    );
  }
}

