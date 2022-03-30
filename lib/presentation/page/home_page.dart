import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_three/presentation/widget/toolbar.dart';
import 'package:news_three/res/app_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final searchEditController = TextEditingController();


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: context.isDarkMode() ? Brightness.light : Brightness.dark
      ),
      child: Scaffold(
        appBar: NewsThreeToolbar(Size(double.infinity, 100)),
        body: Container(
          padding: EdgeInsets.fromLTRB(24, 4, 24, 16),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Text("Selamat Malam",textAlign: TextAlign.start,),

              SizedBox(height :24),

              Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Theme.of(context).backgroundColor
                ),
                child: Row(

                  children: [
                    Icon(
                      Icons.search,
                      size: 24,
                      ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: TextField(
                    
                        controller: searchEditController ,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Article"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("data"),
              TabBar(tabs: [
                Tab(
                  text: "hei",
                ),
                   Tab(
                  text: "hei",
                ),   Tab(
                  text: "hei",
                )
              ])
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
