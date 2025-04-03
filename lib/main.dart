import 'package:flutter/material.dart';
import 'package:learning_stud/model/enroll_form.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/drawer_notification.dart';
import 'package:learning_stud/view/drawer_quiz.dart';
import 'package:learning_stud/view/entry_form.dart';
import 'package:learning_stud/view/home_screen.dart';

import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';
import 'package:learning_stud/view/professional_login/p_historycard.dart';
import 'package:learning_stud/view/professional_login/p_home.dart';
import 'package:learning_stud/view/profile_screen.dart';
import 'package:learning_stud/view/sign_in.dart';




void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignIn(),
    );
  }
}
