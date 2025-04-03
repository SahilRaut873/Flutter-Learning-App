import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/drawer_quiz.dart';
import 'package:learning_stud/view/maindrawer.dart';

class QuestionBankList extends StatefulWidget {
  const QuestionBankList({super.key});

  @override
  State<QuestionBankList> createState() => _QuestionBankListState();
}

class _QuestionBankListState extends State<QuestionBankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: ClipPath(
          clipper: CustomAppBarClipper(),
          child: AppBar(
            title: Text(
              'Courses',textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            backgroundColor: Color.fromRGBO(48, 54, 124, 1),
            centerTitle: true,
            leadingWidth: 100,
            leading: IconButton.outlined(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => BottomBar())));
                  //Navigator.pop(context);
                }),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/image copy.png"))
        ),
        child:Column(
          children: [
          SizedBox(
            height: 20,
          ),
           ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DrawerQuizScreen()));
            }, 
            child: Text("Spoken English"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              fixedSize: Size(350, 70),
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                

              ),
              elevation: 15,
              backgroundColor: Colors.yellow,
              shadowColor: Colors.yellow,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              //side: BorderSide(color: Colors.black,width: 2)
              
            ),
            ),
            SizedBox(
            height: 30,
          ),
             ElevatedButton(
            onPressed: (){}, 
            child: Text("Interview Skill"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              fixedSize: Size(350, 70),
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                

              ),
              elevation: 15,
              backgroundColor: Colors.yellow,
              shadowColor: Colors.yellow,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              //side: BorderSide(color: Colors.black,width: 2)
              
            ),
            ),
            SizedBox(
            height: 30,
          ),
             ElevatedButton(
            onPressed: (){}, 
            child: Text("ILTES"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              fixedSize: Size(350, 70),
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                

              ),
              elevation: 15,
              backgroundColor: Colors.yellow,
              shadowColor: Colors.yellow,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              //side: BorderSide(color: Colors.black,width: 2)
              
            ),
            ),
            SizedBox(
            height: 30,
          ),
             ElevatedButton(
            onPressed: (){}, 
            child: Text("Abacus"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              fixedSize: Size(350, 70),
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                

              ),
              elevation: 15,
              backgroundColor: Colors.yellow,
              shadowColor: Colors.yellow,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              //side: BorderSide(color: Colors.black,width: 2)
              
            ),
            )
          ],
        ) ,
      ),
    );
  }
}