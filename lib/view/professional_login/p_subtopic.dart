import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_stud/view/professional_login/p_topic.dart';

class ProfSubtopic extends StatefulWidget {
  const ProfSubtopic({super.key});

  @override
  State<ProfSubtopic> createState() => _ProfSubtopicState();
}

class _ProfSubtopicState extends State<ProfSubtopic> {
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfTopicScreen()));
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
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 30,top: 40)),
                          Text("Watch Video",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(222, 221, 240, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 30,top: 40)),
                          Text("Notes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 30,top: 40)),
                          Text("Take Quiz",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ]
       )
      ),
    );
  }
}