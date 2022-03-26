import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_three/res/app_color.dart';
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
    ),
    SliderWidget(
        title: "Explore and follow topics relevant to you",
        desc:
            "Create with curated content on thousands of topics from world-renowned publishers, local outlets, and the community."),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: AppColors.colorPrimary),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: AppColors.colorPrimary,
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
                color: Colors.white,
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
                                    ? AppColors.colorPrimary
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

  const SliderWidget(
      {Key? key, required String this.title, required String this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 16, color: AppColors.blueLinkWater),
          ),
          Expanded(child: Container()),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.blueTangaroa),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
