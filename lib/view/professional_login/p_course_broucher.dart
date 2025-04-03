
import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/inner_home.dart';

class Coursebroucher extends StatefulWidget {
  const Coursebroucher({super.key});

  @override
  State<Coursebroucher> createState() => _CoursebroucherState();
}

class _CoursebroucherState extends State<Coursebroucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text('Course Broucher',
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
                    MaterialPageRoute(builder: ((context) => InnerHome())));
                //Navigator.pop(context);
              }),
              ),
              
            ),
          ),

      body: Center(
        child: Text("Course boroucher ar comming soon"),
      ),
    );
  }
}
