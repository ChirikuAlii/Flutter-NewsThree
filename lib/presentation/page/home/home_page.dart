import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_three/presentation/model/category_news.dart';
import 'package:news_three/presentation/widget/home_page/category_list_widget.dart';
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
  List<CategoryNews>listCategory = [
    CategoryNews(title: "All", isSelected: true),
    CategoryNews(title: "Business", isSelected: true),
    CategoryNews(title: "Politics", isSelected: true),
    CategoryNews(title: "Gaming", isSelected: true),
    CategoryNews(title: "Crypto", isSelected: true),
    CategoryNews(title: "Technology", isSelected: true),
  ];
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
        appBar: NewsThreeToolbar(const Size(double.infinity, 100)),
        body: Container(
          padding: const EdgeInsets.fromLTRB(24, 4, 0, 16),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Text("Selamat Malam",textAlign: TextAlign.start,),

              SizedBox(height :24),

              Container(
                margin: EdgeInsets.only(right: 24),
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Theme.of(context).backgroundColor
                ),
                child: Row(

                  children: [
                    const Icon(
                      Icons.search,
                      size: 24,
                      ),
                    const SizedBox(width: 8,),
                    Expanded(
                      child: TextField(
                    
                        controller: searchEditController ,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Article"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategory.length,
                  itemBuilder: (context, index)  {
                    return CategoryListWidget(
                      categoryNews: listCategory[index],
                    );
                      },
                    ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Trending",
                      style: TextStyle(color: Theme.of(context).textTheme.headlineSmall?.color,
                      fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                      fontWeight: FontWeight.bold)
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("View More Trending");
                    },
                    child: Text(
                      "View more",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  ),
                  SizedBox(width:24,)
                ],

              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      );
                    },
                  ),
              ),

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
