import 'package:flutter/material.dart';
import 'package:learning_stud/view/maindrawer.dart';
import 'package:learning_stud/view/professional_login/p_maindrawer.dart';
import 'package:learning_stud/view/professional_login/p_profilescreen.dart';
import 'package:learning_stud/view/professional_login/p_spoken_next.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfHomeScreen extends StatefulWidget {
  const ProfHomeScreen({super.key});

  @override
  State<ProfHomeScreen> createState() => _ProfHomeScreenState();
}

class _ProfHomeScreenState extends State<ProfHomeScreen> {
  Color mainColor = const Color(0xFF2631C1);
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
    // "assets/images/abacus.jpeg",
    // "assets/images/learningStudioLogo.jpeg",
    // "assets/images/edit_abacus.png",
    // "assets/images/abacus2.jpeg",
    // "assets/images/essential.jpeg",
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
        drawer: ProfMainDrawer(),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/crop_bg.jpeg"),
              fit: BoxFit.cover,
            )),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 60, left: 30)),
                      Text(
                        "Hello User",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      IconButton.outlined(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfProfileScreen()));
                        },
                        icon: Icon(Icons.account_circle),
                        color: Colors.white,
                        iconSize: 40,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Text(
                        '"I never dreamed about success\nI worked for it."',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 70, left: 50)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 40, top: 40)),
                      Text(
                        "My Courses",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(48, 54, 124, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      //xheight: 20,
                      ),
                  Container(
                    //color: Colors.amber,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 30)),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            ProfHomeNext())));
                              },
                              child: Container(
                                //padding: EdgeInsets.all(40),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(127, 126, 154, 1),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20,
                                          right: 20,
                                          left: 20,
                                          bottom: 5),
                                      height: 100,
                                      // width: double.infinity,
                                      //color: Colors.black,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/learningStudioLogo.jpeg"),
                                        fit: BoxFit.cover,
                                        //alignment: Alignment.bottomLeft
                                      )),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Spoken English",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            ProfHomeNext())));
                              },
                              child: Container(
                                //padding: EdgeInsets.all(40),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(127, 126, 154, 1),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20,
                                          right: 20,
                                          left: 20,
                                          bottom: 5),
                                      height: 100,
                                      // width: double.infinity,
                                      //color: Colors.black,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/learningStudioLogo.jpeg"),
                                        fit: BoxFit.cover,
                                        //alignment: Alignment.bottomLeft
                                      )),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Interview Skills",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                              },
                              child: Container(
                                //padding: EdgeInsets.all(40),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(127, 126, 154, 1),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20,
                                          right: 20,
                                          left: 20,
                                          bottom: 5),
                                      height: 100,
                                      // width: double.infinity,
                                      //color: Colors.black,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/learningStudioLogo.jpeg"),
                                        fit: BoxFit.cover,
                                        //alignment: Alignment.bottomLeft
                                      )),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "ILETS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                              },
                              child: Container(
                                //padding: EdgeInsets.all(40),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(127, 126, 154, 1),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20,
                                          right: 20,
                                          left: 20,
                                          bottom: 5),
                                      height: 100,
                                      // width: double.infinity,
                                      //color: Colors.black,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/learningStudioLogo.jpeg"),
                                        fit: BoxFit.cover,
                                        //alignment: Alignment.bottomLeft
                                      )),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "ABACUS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                              },
                              child: Container(
                                //padding: EdgeInsets.all(40),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(127, 126, 154, 1),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20,
                                          right: 20,
                                          left: 20,
                                          bottom: 5),
                                      height: 100,
                                      // width: double.infinity,
                                      //color: Colors.black,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/learningStudioLogo.jpeg"),
                                        fit: BoxFit.cover,
                                        //alignment: Alignment.bottomLeft
                                      )),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Solar Training",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Container(
                        height: 300,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20,top: 30)),
                              Text(
                                "Availabe Courses",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(48, 54, 124, 1),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.only(top: 20, left: 30)),
                                      GestureDetector(
                                        onTap: () {
                                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                                        },
                                        child: Container(
                                          //padding: EdgeInsets.all(40),
                                          margin:EdgeInsets.only(top: 10, bottom: 20),
                                          height: 180,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Color.fromRGBO(127, 126, 154, 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20,
                                                    right: 20,
                                                    left: 20,
                                                    bottom: 5),
                                                height: 100,
                                                // width: double.infinity,
                                                //color: Colors.black,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/learningStudioLogo.jpeg"),
                                                  fit: BoxFit.cover,
                                                  //alignment: Alignment.bottomLeft
                                                )),
                                              ),
                                              const Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Text(
                                                  "ILETS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                                        },
                                        child: Container(
                                          //padding: EdgeInsets.all(40),
                                          margin:
                                              EdgeInsets.only(top: 10, bottom: 20),
                                          height: 180,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Color.fromRGBO(127, 126, 154, 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20,
                                                    right: 20,
                                                    left: 20,
                                                    bottom: 5),
                                                height: 100,
                                                // width: double.infinity,
                                                //color: Colors.black,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/learningStudioLogo.jpeg"),
                                                  fit: BoxFit.cover,
                                                  //alignment: Alignment.bottomLeft
                                                )),
                                              ),
                                              const Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Text(
                                                  "ILETS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>Home2() )));
                                        },
                                        child: Container(
                                          //padding: EdgeInsets.all(40),
                                          margin:
                                              EdgeInsets.only(top: 10, bottom: 20),
                                          height: 180,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Color.fromRGBO(127, 126, 154, 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 20,
                                                    right: 20,
                                                    left: 20,
                                                    bottom: 5),
                                                height: 100,
                                                // width: double.infinity,
                                                //color: Colors.black,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/learningStudioLogo.jpeg"),
                                                  fit: BoxFit.cover,
                                                  //alignment: Alignment.bottomLeft
                                                )),
                                              ),
                                              const Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Text(
                                                  "ILETS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            
                          }, child: Text("Enquiry")),
                          //       Container(
                          //         height: 150,
                          //         width: 200,
                          //         color: Colors.amberAccent,
                          //         child: ListView(
                          //           shrinkWrap: true,
                          //           children: [
                          //             Container(
                          //               height: 330,
                          //               width: 52,
                          //               child: PageView.builder(
                          //                 controller: _pageController,
                          //                 itemCount: imagesUrl.length,
                          //                 itemBuilder: (_, index) => GestureDetector(
                          //                   onTap: () {
                          //                     // Navigator.pushReplacement(
                          //                     //     context,
                          //                     //     MaterialPageRoute(
                          //                     //         builder: ((context) => InnerHome())));
                          //                   },
                          //                   child: Column(
                          //                     children: [
                          //                       Expanded(
                          //                         child: Container(
                          //                           height: 100,
                          //                           width: 350,
                          //                           margin: const EdgeInsets.all(10),
                          //                           decoration: BoxDecoration(
                          //                             color: Colors.amber,
                          //                             borderRadius:
                          //                                 BorderRadius.circular(20),
                          //                             image: DecorationImage(
                          //                               scale: 4,
                          //                               image: AssetImage(
                          //                                 imagesUrl[index],
                          //                               ),
                          //                               fit: BoxFit.cover,
                          //                             ),
                          //                           ),
                          //                         ),
                          //                       ),
                          //                       SizedBox(
                          //                         height: 10,
                          //                       ),
                          //                       Text("Spoken English")
                          //                     ],
                          //                   ),
                          //                 ),
                          //               ),
                          //             ),
                          //             // const SizedBox(
                          //             //   height: 10,
                          //             // ),
                          //             Column(
                          //               crossAxisAlignment: CrossAxisAlignment.center,
                          //               children: [
                          //                 SmoothPageIndicator(
                          //                   controller:
                          //                       _pageController, // PageController
                          //                   count: imagesUrl.length,
                          //                   effect: JumpingDotEffect(
                          //                       verticalOffset: 20,
                          //                       activeDotColor:
                          //                           mainColor), // your preferred effect
                          //                   onDotClicked: (index) {},
                          //                 ),
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          //     ],
                          //   )
                          // ])),
                        ]
                        )
                        )
                  ])
                ])));
  }
}
