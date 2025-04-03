import 'package:flutter/material.dart';
import 'package:learning_stud/view/professional_login/p_subtopic.dart';
import 'package:learning_stud/view/professional_login/p_track.dart';

class ProfTopicScreen extends StatefulWidget {
  const ProfTopicScreen({super.key});

  @override
  State<ProfTopicScreen> createState() => _ProfTopicScreenState();
}

class _ProfTopicScreenState extends State<ProfTopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Asset 6@2x.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 90)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton.outlined(
                    onPressed: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfTrackReport()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                      size: 25,
                    )),
                const Text(
                  "Spoken English",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    )),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                //color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/images/topic_image.png"),fit: BoxFit.cover,)
                  ),
            ),
            Container(
              height:50,
              width: 350,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                color: Color.fromRGBO(48, 54, 124, 1),
              ),
              child:const Center(
                child: Text("Advanced Vocabulary",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent[700],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                child:const Center(
                  child: Text("Lectures",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            Container(
              height: 270,
              width: 350,
              decoration:const BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
               
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfSubtopic()));
                    },
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text("1. Give Daily words to student",
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          ]
        )
      )


    );
  }
}