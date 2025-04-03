import 'package:flutter/material.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/mobile_number.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';

class SignIn extends StatefulWidget {
  @override
  State createState() => _SignIn();
}

class _SignIn extends State {
  final _formfield = GlobalKey<FormState>();

  final passController = TextEditingController();
  final mobController = TextEditingController();
  bool passToggle = true;
  void _submitForm() {
    if (_formfield.currentState!.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ProfBottomBar()));
    }
  }

  // String? _validateEmail(value) {
  //   if (value!.isEmpty) {
  //     return "Please enter email";
  //   }
  //   RegExp emailReg = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  //   if (!emailReg.hasMatch(value)) {
  //     return "Please enter valid email";
  //   }
  //   return null;
  // }

  // String? _valiMobile(value) {
  //   if (value!.isEmpty) {
  //     return 'Please Enter a phone number';
  //   }
  //   if (value.length != 10) {
  //     return "Please enter a 10 didgit number";
  //   }
  // }

  // String? _validPass(value) {
  //   if (value!.isEmpty) {
  //     return "PleaSE ENTER PASSWORD";
  //   }
  //   if (value.length! > 6) {
  //     return "Enter password should be more than six characyter";
  //   }
  // }

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
        //backgroundColor: Colors.amber,
        //   body: Stack(
        //     children: [
        //       Container(
        //         color: Colors.blueAccent,
        //       ),
        //       ClipPath(
        //         clipper: BezierClipper(),
        //         child: Container(
        //           color: Colors.white,
        //           height: 400,
        //         ),
        //       )
        //     ],
        //   )
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
                          ]),
                    )),
              ),

              SizedBox(height: 20),
              Text(
                "Log in to access your account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 25),
              // Padding(padding: EdgeInsets.all(40)),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:
                      Form(
                        key: _formfield,
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
                                  return "Please enter username";
                                }
                                return null;
                              },
                            ),
                          
                      SizedBox(height: 20),
                      TextFormField(
                         autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passController,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(245, 245, 245, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          hintStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          hintText: 'Enter your password',
                          helperStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
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
                      ],
                        ),
                      ),
                      
                    
                  
                )
              ]),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _submitForm,

                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=> ProfBottomBar())));

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
              const Text(
                "CLICK BELOW ON FREE TRIAL TO GET A GLIMPSE OF OUR TUTORIALS",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
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

class CustomAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.moveTo(0, 0);

    path.lineTo(0, size.height - 60);
    var firstContrilPoint = new Offset(size.width / 8, size.height + 10);
    var firstEndPoint = new Offset(size.width / 1.9, size.height - 50);

    path.quadraticBezierTo(firstContrilPoint.dx, firstContrilPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    //path.quadraticBezierTo(size.width, size.height*10, size.width/10, size.height) ;
    // path.quadraticBezierTo(
    //      size.width / 0.25,
    //      size.height / 0.5,
    //      size.width / 0.5,
    //      size.height / 0.75
    //  );
    var secondContrilPoint = new Offset(size.width / 1.10, size.height / 1.40);
    var secondEndPoint = new Offset(size.width, size.height);

    path.quadraticBezierTo(secondContrilPoint.dx, secondContrilPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);

    // path.quadraticBezierTo(x1, y1, x2, y2)
    // path.quadraticBezierTo(3/4 * size.width, size.height, size.width, size.height-50) ;
    //  path.quadraticBezierTo(
    //      size.width * 0.75,
    //      size.height * 1,
    //      size.width,
    //      size.height * 0.75
    //  );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
