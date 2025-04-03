import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/inner_home.dart';
import 'package:learning_stud/view/maindrawer.dart';
import 'package:learning_stud/view/quick_test.dart';
import 'package:learning_stud/view/suggestion.dart';
import 'package:learning_stud/view/take_quiz%20(1).dart';
import 'package:learning_stud/view/take_quiz.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = const Color(0xFF2631C1);
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
    "assets/images/new_ilets.png",
    "assets/images/new_spoken_image.png",
    "assets/images/edit_abacus.png",
    "assets/images/abacus2.jpeg",
    "assets/images/essential.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Courses",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(48, 54, 124, 1),
      ),
      drawer: const MainDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/crop_bg.jpeg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(padding: EdgeInsets.only(top: 70)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     IconButton.outlined(
            //         onPressed: () {},
            //         icon: const Icon(
            //           Icons.arrow_back_ios_new_outlined,
            //           color: Colors.white,
            //           size: 25,
            //         )),
            //     const Text(
            //       "Courses",
            //       style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.w700,
            //           color: Colors.white),
            //     ),
            //     IconButton.outlined(
            //         onPressed: () {},
            //         icon: const Icon(
            //           Icons.menu,
            //           color: Colors.white,
            //           size: 30,
            //         )),
            //   ],
            // ),
            Padding(padding: EdgeInsets.only(top: 30)),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 330,
                  width: 52,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: imagesUrl.length,
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => InnerHome())));
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 350,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  scale: 4,
                                  image: AssetImage(
                                    imagesUrl[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Spoken English")
                        ],
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController, // PageController
                      count: imagesUrl.length,
                      effect: JumpingDotEffect(
                          verticalOffset: 20,
                          activeDotColor: mainColor), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => QuickTestSceen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.textsms_rounded,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '    Quick Test',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(
                      255, 255, 255, 10), // Button background color
                  fixedSize: Size(350, 64), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Suggestion()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.help,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  Text(
                    '    Suggestion?',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(
                      255, 255, 255, 10), // Button background color
                  fixedSize: Size(350, 64), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                await Share.share(
                    "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.send_rounded,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  Text(
                    '    Share With Friends',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 30,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(
                      255, 255, 255, 10), // Button background color
                  fixedSize: Size(350, 64), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            //
          ],
        ),
      ),
      //bottomNavigationBar: BottomBar(),
      //bottomNavigationBar:Homescreen2() ,
      // bottomNavigationBar: CurvedNavigationBar(items: items),
      // bottomNavigationBar: CurvedNavigationBar(
      //     // height: 40,
      //     // maxWidth: 2,
      //     backgroundColor: Colors.transparent,
      //     color: Color.fromRGBO(48, 54, 124, 1),
      //     animationDuration: Duration(milliseconds: 300),
      //     items: const [
      //       Icon(
      //         Icons.home,
      //         color: Colors.white,
      //         size: 40,
      //       ),
      //       Icon(
      //         Icons.notifications,
      //         color: Colors.white,
      //         size: 40,
      //       ),
      //       Icon(
      //         Icons.games,
      //         color: Colors.white,
      //         size: 40,
      //       ),
      //       Icon(
      //         Icons.person,
      //        color: Colors.white,
      //         size: 40,
      //       )
      //     ]),
    );
  }
}
