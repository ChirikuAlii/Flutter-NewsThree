import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_three/presentation/page/home/home_page.dart';
import 'package:news_three/presentation/route/route.gr.dart';
import 'package:news_three/res/app_color.dart';
import 'package:news_three/res/app_theme.dart';
import 'package:news_three/res/app_vector.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int _currentPage = 0;
  PageController _pageController = PageController();

  List<Widget> _listSlider = [
    SliderWidget(
      title: "Discover and share the stories that matter to you",
      desc:
          "Create with curated content on thousands of topics from world-renowned publishers, local outlets, and the community.",
      isShowButton: false,
    ),
    SliderWidget(
      title: "Explore and follow topics relevant to you",
      desc:
          "Create with curated content on thousands of topics from world-renowned publishers, local outlets, and the community.",
      isShowButton: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:
          SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Center(
                child: SvgPicture.asset(
                  AppVectors.intro_news2,
                  height: 220,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Row(
                        children:
                            List<Widget>.generate(_listSlider.length, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height: 5,
                            width: (index == _currentPage) ? 40 : 15,
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 24),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: (index == _currentPage)
                                    ? Theme.of(context).primaryColor
                                    : AppColors.greyZircon),
                          );
                        }),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 26 + 24, 0, 16),
                      alignment: Alignment.bottomCenter,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: _listSlider.length,
                          onPageChanged: (index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return _listSlider[index];
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  final String title;
  final String desc;
  final bool isShowButton;
  const SliderWidget(
      {Key? key,
      required String this.title,
      required String this.desc,
      required this.isShowButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(
            height: 16,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 16, color: AppColors.blueLinkWater),
          ),
          Expanded(child: Container()),
          Visibility(
            maintainSize: !isShowButton,
            maintainAnimation: !isShowButton,
            maintainState: !isShowButton,
            visible: isShowButton,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).iconTheme.color!),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)))),
              onPressed: () {
                AutoRouter.of(context)
                    .push(MyHomePageRoute(title: "News Three"));
                AutoRouter.of(context).removeLast();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
