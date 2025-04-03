import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/home_screen.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';

class ProfDemoNotification extends StatefulWidget {
  const ProfDemoNotification({super.key});

  @override
  State<ProfDemoNotification> createState() => _ProfDemoNotificationState();
}

class _ProfDemoNotificationState extends State<ProfDemoNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text('Notification',
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
                    MaterialPageRoute(builder: ((context) => ProfBottomBar())));
                //Navigator.pop(context);
              }),
              ),
              
            ),
          ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //decoration: BoxDecoration(
            //image: DecorationImage(image: AssetImage("assets/images/image copy.png"),fit: BoxFit.fitHeight)),
        decoration: BoxDecoration(
          
          image: DecorationImage(image: AssetImage("assets/images/image copy.png"),fit: BoxFit.cover)
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListviewItem(index);
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 0,
            );
          },
          itemCount: 15,
        ),
      ),
    );
  }
}

Widget ListviewItem(int index) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        prefixIcon(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndDate(index),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget prefixIcon() {
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(10),
    decoration:
        BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade300),
    child: Icon(
      Icons.notifications,
      size: 25,
      color: Colors.grey,
    ),
  );
}

Widget message(int index) {
  double textSize = 15;
  return Container(
    child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: "Message ",
            style: TextStyle(
              fontSize: textSize,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                  text: "Notification Description",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ))
            ])),
  );
}

Widget timeAndDate(int index) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "9/08/2024",
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        Text(
          "7:10 am",
          style: TextStyle(
            fontSize: 10,
          ),
        )
      ],
    ),
  );
}
