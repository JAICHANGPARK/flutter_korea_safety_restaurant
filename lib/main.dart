import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:korea_safety_restaurant/model/restaurant.dart' as r;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<r.Title> _titleList = [];
  List<r.Data> _dataList = [];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future fetchData() async {
    var result = await rootBundle.loadString("assets/data.json");
    print(result);
    r.Restaurant restaurant = r.Restaurant.fromJson(jsonDecode(result));
    _titleList = restaurant.title;
    _dataList = restaurant.data;
    print(_titleList.length);
    print(_dataList.length);
    List<String> _aList = [];
    for(int i =0; i<_dataList.length; i++){
      _aList.add(_dataList[i].rELAXSINM);
    }
    print(_aList.length);
    var distinctIds = _aList.toSet().toList();
    print(distinctIds);


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
