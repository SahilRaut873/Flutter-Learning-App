import 'package:flutter/material.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';
import 'package:learning_stud/view/professional_login/p_historycard.dart';
import 'package:learning_stud/view/professional_login/p_track.dart';

class ProfHomeNext extends StatefulWidget {
  const ProfHomeNext({super.key});

  @override
  State<ProfHomeNext> createState() => _ProfHomeNextState();
}

class _ProfHomeNextState extends State<ProfHomeNext> {
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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 90)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfBottomBar()));
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
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfTrackReport()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.note,
                    color:Colors.white,
                    size: 70,
                  ),
                  Text(
                    "      Learning",
                    style:const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                 
                 
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(48, 54, 124, 1),
                   // Button background color
                  fixedSize:const Size(350, 109), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => Suggestion()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.note,
                    color:Colors.white,
                    size: 25,
                  ),
                  Text(
                    '      Demo Exam',
                    style:const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                 
                 
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(48, 54, 124, 1),
                   // Button background color
                  fixedSize:const Size(350, 109), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => Suggestion()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.pages,
                    color:Colors.white,
                    size: 25,
                  ),
                  Text(
                    '      Final Exam',
                    style:const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                 
                 
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(48, 54, 124, 1),
                   // Button background color
                  fixedSize:const Size(350, 109), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Note: This option will be activated\nafter completing the course",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 243, 101, 35)
            ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfHistoryCard()));
              },
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.pages,
                    color:Colors.white,
                    size: 25,
                  ),
                  Text(
                    '     History Card',
                    style:const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                 
                 
                ],
              ),
              style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 243, 101, 35),
                   // Button background color
                  fixedSize:const Size(350, 109), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust curvature here
                  ),
                  shadowColor: Colors.black),
            ),
          ]
        )
        )
    );
  }
}