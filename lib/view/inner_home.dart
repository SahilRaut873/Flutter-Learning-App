import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/course_broucher.dart';
import 'package:learning_stud/view/take_quiz.dart';
import 'package:learning_stud/view/video.dart';


class InnerHome extends StatefulWidget {
  const InnerHome({super.key});

  @override
  State<InnerHome> createState() => _InnerHome();
}

class _InnerHome extends State<InnerHome> {
  @override
  Widget build(BuildContext context)=> PopScope(
    canPop: true,
     child:Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Courses",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(48, 54, 124, 1),
        leadingWidth: 100,
              leading: IconButton.outlined(
                
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => BottomBar())));
                //Navigator.pop(context);
              }),
      ),
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
            // Padding(padding: EdgeInsets.only(top: 90)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     IconButton.outlined(
            //         onPressed: () {
            //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
            //         },
            //         icon: const Icon(
            //           Icons.arrow_back_ios_new_outlined,
            //           color: Colors.white,
            //           size: 25,
            //         )),
            //     const Text(
            //       "Spoken English",
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
            //           size: 25,
            //         )),
            //   ],
            // ),
            Padding(padding: EdgeInsets.only(bottom: 20,top: 15)),
            Container(
              height: 250,
              //width: 800,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SpokenEnglish_image.png"))),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              "Spoken English is nothing but",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(48, 54, 124, 1)),
            ),
            const Text(
              "the language",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(48, 54, 124, 1)),
            ),
            const Text(
              "we use to communicate with ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(48, 54, 124, 1)),
            ),
            const Text(
              "others .",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(48, 54, 124, 1)),
            ),

            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>VideoScreen()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.video_call,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  Text(
                    '    Video',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 180,
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
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TakeQuizScreen()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.quiz,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  Text(
                    '    Take Quick Quiz',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 100,
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Coursebroucher()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.book,
                    color: Color.fromRGBO(
                      48,
                      54,
                      124,
                      1,
                    ),
                    size: 25,
                  ),
                  Text(
                    '    Course Details',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 54, 124, 1)),
                  ),
                  SizedBox(
                    width: 110,
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
    )
    );
  }
