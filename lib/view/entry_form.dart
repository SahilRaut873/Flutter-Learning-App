import 'package:flutter/material.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/home_screen.dart';

import 'sign_in.dart';

class NewEntryform extends StatefulWidget {
  const NewEntryform({super.key});

  @override
  State<NewEntryform> createState() => _NewEntryformState();
}

class _NewEntryformState extends State<NewEntryform> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final mobController = TextEditingController();
  final emailController = TextEditingController();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            reverse: true,
            // child: Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("assets/image copy.png"),fit: BoxFit.cover)
            //   ),
            child: Column(children: [
              Container(
                height: 370,
                width: double.infinity,
                child: ClipPath(
                    clipper: CustomAppBar(),
                    child: Container(
                      color: Color.fromRGBO(48, 54, 124, 1),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 70)),
                            // Container(
                            //   height: 150,
                            //   width: 150,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(40)
                            //   ),
                            CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage(
                                  "assets/images/learningStudioLogo.jpeg"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Learning Studio",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ]),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30,bottom: 30),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //controller: userController ,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            fillColor: Color.fromRGBO(245, 245, 245, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'USER ID',
                            hintStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            hintText: 'Enter your user ID',
                            helperStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your username";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //controller: userController ,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            fillColor: Color.fromRGBO(245, 245, 245, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'EMAIL ID',
                            hintStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            hintText: 'Enter your email',
                            helperStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          controller: emailController,
                          validator: (value) {
                            final bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value!.isEmpty) {
                              return "Enter your email ID";
                            } else if (!emailValid) {
                              return "Enter your valid email ID";
                            }
                          },
                        ),
                         SizedBox(height: 20),
                        TextFormField(
                          controller: mobController,
                          //maxLength: 10,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //controller: mobController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(30),
                            fillColor: Color.fromRGBO(245, 245, 245, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'MOBILE NUMBER',
                            hintStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            hintText: 'Enter your mobile number ',
                            helperStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile number';
                            } else if (mobController.text.length != 10) {
                              return 'Please enter your valid mobile number';
                            } else if (mobController.text.length > 11) {
                              return 'Please enter your valid mobile number';
                            }
                            return null;
                          },
                        ),
                         SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //controller: userController ,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(30),
                            fillColor: Color.fromRGBO(245, 245, 245, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'ADDRESS',
                            prefixIcon: Icon(Icons.home),
                            hintStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            hintText: 'Enter your address ',
                            helperStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your valid adress";
                            }
                            return null;
                          },
                        ),
                         SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          //controller: userController ,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(30),
                            fillColor: Color.fromRGBO(245, 245, 245, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'PINCODE',
                            prefixIcon: Icon(Icons.numbers),
                            hintStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            hintText: 'Enter your PINCODE',
                            helperStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your PINCODE";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            

              ElevatedButton(
                  onPressed: submitForm,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(48, 54, 124, 1),
                      fixedSize: Size(348, 53))),
              //Padding(padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom)),
              Padding(padding: EdgeInsets.only(bottom: 40)),
            ])),
      ),
    );
  }
}
