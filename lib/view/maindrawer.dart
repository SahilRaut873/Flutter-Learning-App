
import 'package:flutter/material.dart';
import 'package:learning_stud/view/drawer_event.dart';
import 'package:learning_stud/view/drawer_notification.dart';
import 'package:learning_stud/view/drawer_sendfeeback.dart';
import 'package:learning_stud/view/questionbank_list.dart';
import 'package:learning_stud/view/sign_in.dart';
import 'package:share_plus/share_plus.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Drawer(
        //backgroundColor: Colors.red,
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(48, 54, 124, 1),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60, ),
                    width: 85,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Kiyansh.jpeg"),),
                    ),
                  ),
                  Text(
                    "Kiyansh Jadhav",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,)),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.home),
              onTap: () {
                //Navigator.of(context).pop();
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyDrawerSate()));
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyDrawerSate()));
              },
            ),
            ListTile(
              title: const Text(
                "Quiz",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.quiz),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuestionBankList()));
              },
            ),
            ListTile(
                title: const Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                leading: Icon(Icons.notifications),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DemoNotification()));
                }),
            ListTile(
              title: const Text(
                "Student Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.login),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
              },
            ),
            ListTile(
              title: const Text(
                "Event",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.event),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EventsPage()));
              },
            ),
            ListTile(
              title: Text(
                "Invite Friend",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.share),
              onTap: () async {
                Navigator.of(context).pop();
                await Share.share(
                    "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
              },
            ),
            ListTile(
              title: const Text(
                "Send Feedback",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              leading: Icon(Icons.feedback),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedBackForm()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
