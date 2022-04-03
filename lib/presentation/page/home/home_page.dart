import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_three/presentation/model/category_news.dart';
import 'package:news_three/presentation/widget/home_page/category_list_widget.dart';
import 'package:news_three/presentation/widget/home_page/latest_list_widget.dart';
import 'package:news_three/presentation/widget/home_page/seacrh_bar_article_widget.dart';
import 'package:news_three/presentation/widget/home_page/trending_list_widget.dart';
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
  List<CategoryNews> listCategory = [
    CategoryNews(title: "All", isSelected: true),
    CategoryNews(title: "Business", isSelected: true),
    CategoryNews(title: "Politics", isSelected: true),
    CategoryNews(title: "Gaming", isSelected: true),
    CategoryNews(title: "Crypto", isSelected: true),
    CategoryNews(title: "Technology", isSelected: true),
  ];

  var scrollControllerHome = ScrollController();
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
          statusBarIconBrightness:
              context.isDarkMode() ? Brightness.light : Brightness.dark),
      child: Scaffold(
        appBar: NewsThreeToolbar(Size(MediaQuery.of(context).size.width, 100)),
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.fromLTRB(0, 4, 0, 16),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Selamat Malam",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SearchBarArticleWidget(searchEditController: searchEditController,),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(left: 24),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listCategory.length,
                      itemBuilder: (context, index) {
                        return CategoryListWidget(
                          categoryNews: listCategory[index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Text("Trending",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.bold)),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("View More Trending${MediaQuery.of(context).size.width}}");
                        },
                        child: Text(
                          "View more",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.fontSize,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      )
                    ],
                  ),
                  const TrendingListWidget(),
                
                  Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Text("Latest",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.color,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.bold)),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("View More Trending");
                        },
                        child: Text(
                          "View more",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.fontSize,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ]),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return const LatestListWidget();
                }, childCount: 10),
              )
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
