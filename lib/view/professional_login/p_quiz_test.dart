import 'package:flutter/material.dart';

import 'package:learning_stud/view/home_screen.dart';

import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';
import 'package:page_transition/page_transition.dart';



class ProfQuickTestSceen  extends StatefulWidget {
  final int initialQuestionIndex;

  const ProfQuickTestSceen ({Key? key, this.initialQuestionIndex = 0}) : super(key: key);

  @override
  _ProfQuickTestSceenState createState() => _ProfQuickTestSceenState();
}

class QuestionOptionModel {
  final String question;
  final List<String> options;
  final int answer;

  const QuestionOptionModel({
    required this.question,
    required this.options,
    required this.answer,
  });
}

class _ProfQuickTestSceenState extends State<ProfQuickTestSceen > {
  late int questionIndex;
  int mark = 0;

  @override
  void initState() {
    super.initState();
    questionIndex = widget.initialQuestionIndex;
  }

  List<QuestionOptionModel> questionList = [
    const QuestionOptionModel(
      question: "What is the capital of India?",
      options: ["Gujrat", "Mumbai", "Delhi", "Mahrashtra"],
      answer: 2,
    ),
    const QuestionOptionModel(
      question: "What is the currency of India?",
      options: ["Dollar", "Rupee", "Pound", "Euro"],
      answer: 1,
    ),
    const QuestionOptionModel(
      question: "What is the national language of India?",
      options: ["Marathi", "English", "Gujarati", "Hindi"],
      answer: 3,
    ),
    const QuestionOptionModel(
      question: "What is the national sport of India?",
      options: ["Cricket", "Hockey", "Chess", "Baseball"],
      answer: 1,
    ),
    const QuestionOptionModel(
      question: "What is the longest river in India?",
      options: ["Godavari", "Ganga", "Krishna", "Mula/Mutha"],
      answer: 1,
    ),
  ];

  bool questionScreen = true;
  static Color defaultOptionColor = const Color(0xFFF4F3F9);
  Color optionAColor = defaultOptionColor;
  Color optionBColor = defaultOptionColor;
  Color optionCColor = defaultOptionColor;
  Color optionDColor = defaultOptionColor;
  Color correctOptionColor = const Color.fromARGB(255, 104, 227, 108);
  Color wrongOptionColor = const Color.fromARGB(255, 236, 100, 90);

  bool isAlreadyAnswered = false;

  // Track selected options
  Map<int, bool> selectedOptions = {};

  void findCorrectAnswer() {
    QuestionOptionModel obj = questionList[questionIndex];
    setState(() {
      if (obj.answer == 0) {
        optionAColor = correctOptionColor;
      } else if (obj.answer == 1) {
        optionBColor = correctOptionColor;
      } else if (obj.answer == 2) {
        optionCColor = correctOptionColor;
      } else if (obj.answer == 3) {
        optionDColor = correctOptionColor;
      }
    });
  }

  void answered(int optionIndex) {
    QuestionOptionModel obj = questionList[questionIndex];

    setState(() {
      if (!isAlreadyAnswered) {
        isAlreadyAnswered = true;
        selectedOptions[optionIndex] = true; // Mark this option as selected
        if (optionIndex == obj.answer) {
          if (optionIndex == 0) optionAColor = correctOptionColor;
          if (optionIndex == 1) optionBColor = correctOptionColor;
          if (optionIndex == 2) optionCColor = correctOptionColor;
          if (optionIndex == 3) optionDColor = correctOptionColor;
          mark++;
        } else {
          if (optionIndex == 0) optionAColor = wrongOptionColor;
          if (optionIndex == 1) optionBColor = wrongOptionColor;
          if (optionIndex == 2) optionCColor = wrongOptionColor;
          if (optionIndex == 3) optionDColor = wrongOptionColor;
          findCorrectAnswer();
        }
      }
    });
    debugPrint("Mark after answering: $mark"); // Debug print
  }

  /* void resetOptions() {
    setState(() {
      optionAColor = defaultOptionColor;
      optionBColor = defaultOptionColor;
      optionCColor = defaultOptionColor;
      optionDColor = defaultOptionColor;
      isAlreadyAnswered = false;
      selectedOptions.clear(); // Clear selected options to reset checkboxes
    });
  }*/

  void showCannotGoBackDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text("You cannot go back."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void nextQuestion() {
    if (isAlreadyAnswered) {
      if (questionIndex == questionList.length - 1) {
        setState(() {
          questionScreen = false;
        });
      } else {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeftWithFade,
            duration: const Duration(milliseconds: 700),
            child: ProfQuickTestSceen (initialQuestionIndex: questionIndex + 1),
          ),
        ).then((_) {
          setState(() {
            questionIndex++;
            //resetOptions();
          });
        });
      }
    }
  }

  Scaffold whichScreen() {
    if (questionScreen) {
      QuestionOptionModel obj = questionList[questionIndex];
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/bkg.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                PreferredSize(
                  preferredSize: const Size.fromHeight(150),
                  child: AppBar(
                    leadingWidth: 100,
                    centerTitle: true,
                    title: const Text(
                      "Quick Test",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    leading: IconButton.outlined(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: ((context) => ProfBottomBar())));
                          //Navigator.pop(context);
                        }),
                    backgroundColor: const Color.fromRGBO(47, 57, 127, 1),
                    elevation: 0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 50)
                        .copyWith(bottom: 150),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255)
                            .withOpacity(1.0),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                bottom: 10), // Reduced bottom margin
                            padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 8), // Reduced vertical padding
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/bk1.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Questions: ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(47, 57, 127, 1),
                                  ),
                                ),
                                Text(
                                  "${questionIndex + 1}/${questionList.length}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(47, 57, 127, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    obj.question,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 25),
                                  optionButton(0, obj.options[0], optionAColor),
                                  const SizedBox(height: 15),
                                  optionButton(1, obj.options[1], optionBColor),
                                  const SizedBox(height: 15),
                                  optionButton(2, obj.options[2], optionCColor),
                                  const SizedBox(height: 15),
                                  optionButton(3, obj.options[3], optionDColor),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (questionIndex > 0)
                                        GestureDetector(
                                          onTap: () {
                                            showCannotGoBackDialog();
                                          },
                                          child: Image.asset(
                                            'assets/images/back.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      const SizedBox(width: 40),
                                      GestureDetector(
                                        onTap: () {
                                          nextQuestion();
                                        },
                                        child: Image.asset(
                                          'assets/images/next.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg2.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(30)),
                  ],
                ),
                Text(
                  "Quiz Result",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(
                        47,
                        57,
                        127,
                        1,
                      )),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mark >= questionList.length / 2
                        ? 'Great'
                        : 'Better Luck Next Time',
                    style: const TextStyle(
                      color: Color.fromRGBO(230, 103, 39, 1),
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    mark >= questionList.length / 2
                        ? "assets/images/scoreimg.png"
                        : "assets/images/scoreimg2.png",
                    width: 318,
                    height: 196,
                  ),
                  Text(
                    mark >= questionList.length / 2
                        ? 'Congratulations !'
                        : 'Try again',
                    style: const TextStyle(
                      color: Color.fromRGBO(47, 57, 127, 1),
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "You Have scored",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(47, 57, 127, 1),
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    " $mark",
                    style: const TextStyle(
                        fontSize: 60,
                        color: Color.fromRGBO(47, 57, 127, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to home or reset quiz
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeScreen())); // Example action
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(220, 103, 39, 1)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(300, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    // onPressed: () {
                    //   // Navigate to home or reset quiz
                    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CoursesPage())); // Example action
                    // },
                    child: const Text(
                      "Finish",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget optionButton(int index, String optionText, Color buttonColor) {
    bool isSelected = selectedOptions[index] ?? false;

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              if (!isAlreadyAnswered) {
                answered(index);
              }
            },
            style: ButtonStyle(
              minimumSize:
                  const MaterialStatePropertyAll(Size(double.infinity, 40)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
              backgroundColor: MaterialStatePropertyAll(buttonColor),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    optionText,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                CheckboxCustom(
                  isChecked: isSelected,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return whichScreen();
  }
}

class CheckboxCustom extends StatelessWidget {
  final bool isChecked;

  const CheckboxCustom({Key? key, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color.fromARGB(255, 4, 4, 4)),
        color:
            isChecked ? Colors.white : const Color.fromARGB(0, 255, 255, 255),
      ),
      child: isChecked
          ? Icon(
              Icons.circle_rounded,
              color: Color.fromRGBO(47, 57, 127, 1),
              size: 12,
            )
          : null,
    );
  }
}
