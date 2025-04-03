import 'package:flutter/material.dart';
import 'package:learning_stud/view/professional_login/p_spoken_next.dart';
import 'package:learning_stud/view/professional_login/p_topic.dart';

class ProfTrackReport extends StatefulWidget {
  const ProfTrackReport({super.key});

  @override
  State<ProfTrackReport> createState() => _ProfTrackReportState();
}

class _ProfTrackReportState extends State<ProfTrackReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/plane_bg.jpeg"),
          fit: BoxFit.cover,
        )),
       child:  Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 90)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfHomeNext()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                     color: Color.fromRGBO(48, 54, 124, 1),
                      size: 25,
                    )),
               
                const Text(
                  "Spoken English",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(48, 54, 124, 1)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromRGBO(48, 54, 124, 1),
                      size: 25,
                    )),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfTopicScreen()));
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
                    '    Introduction',
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
            )
          ]
       )
      ),
    );
  }
}