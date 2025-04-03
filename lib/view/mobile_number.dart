import 'package:flutter/material.dart';
import 'package:learning_stud/view/otp.dart';

import 'sign_in.dart';

class NewMobileNumber extends StatefulWidget {
  @override
  State createState() => _NewMobileNumber();
}

class _NewMobileNumber extends State {
final _formfield = GlobalKey<FormState>();

 final mobController = TextEditingController();
 void _submitForm() {
    if (_formfield.currentState!.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NewOTP()));
    }
  }

  Widget build(BuildContext) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          reverse: true,
          // child: Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("assets/image copy.png"),fit: BoxFit.cover)
          //   ),
          child: Column(
            children: [
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
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ])),
                  )),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Form(
                  key: _formfield,
                  child: TextFormField(
                            controller: mobController,
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
                              labelText: 'MOBILE NUMBER',
                              hintStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                              hintText: 'Enter your mobile number ',
                              helperStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            validator: (value) {
                              
                              if (value == null || value.isEmpty) {
                                return 'Please enter mobile number';
                              }else if(mobController.text.length!=10){
                                return 'Please enter valid mobile number';
                              }else if(mobController.text.length>11){
                                return 'Please enter valid mobile number';
                              }
                              return null;
                            },
                          ),
                ),
              ),
             
             const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: _submitForm,
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
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom)),
            ],
          ),
        ),
      ),
    );
  }
}
