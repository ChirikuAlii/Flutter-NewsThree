import 'package:flutter/material.dart';
import 'package:news_three/presentation/widget/toolbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsThreeToolbar(Size(double.infinity, 100)),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 4, 24, 16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 8,),
            Text("Selamat Malam")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
