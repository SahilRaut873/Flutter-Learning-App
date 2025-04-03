import 'package:flutter/material.dart';
import 'package:learning_stud/view/entry_form.dart';
import 'package:learning_stud/view/mobile_number.dart';

import 'sign_in.dart';

class NewOTP extends StatefulWidget {
  @override
  State createState() => _NewOTP();
}

class _NewOTP extends State {
  Widget build(BuildContext) {
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
                                "OTP Verification",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ])),
                  )),
           

              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 100),
                child: TextFormField(
                
                    //maxLength: 10,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    //controller: mobController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      //contentPadding: EdgeInsets.all(30),
                      fillColor: Color.fromRGBO(245, 245, 245, 1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'OTP',
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      hintText: 'Enter your OTP',
                      helperStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )),
              ),

              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => NewEntryform())));
                  },
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
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => NewMobileNumber())));
                },
                child: Text(
                  "FREE LOGIN",
                  style: TextStyle(
                      color: Color.fromRGBO(219, 102, 39, 1),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      fontSize: 24),
                ),
              ),
              //Padding(padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom)),
            ])),
      ),
    );
  }
}
