import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const items = ['One', 'Two', 'Three', 'Four', 'Five', 'Six'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.purple,
                  child: ListView(
                    children: [
                      for (var item in items)
                        ListTile(
                            title: Text(item)
                        )
                    ],
              ))),
            ],
          )
        ],
    ));
  }
}
