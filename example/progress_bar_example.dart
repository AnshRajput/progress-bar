import 'package:flutter/material.dart';
import 'package:progress_bar/progress_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double percent = 10;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rounded Progress Bar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  percent += 5;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  percent -= 5;
                });
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(200.0),
          child: Center(
            child: ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  RoundedProgressBar(
                    backgroundColor: Colors.white,
                    color: Colors.red,
                    childLeft: Text("$percent%",
                        style: TextStyle(color: Colors.white)),
                    percent: percent,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
