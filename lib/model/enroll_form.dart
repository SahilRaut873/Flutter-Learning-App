import 'package:flutter/material.dart';
import 'package:learning_stud/model/curved_appbar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';
import 'package:learning_stud/view/home_screen.dart';
import 'package:learning_stud/view/professional_login/p_bottom_naigatornbar.dart';
import 'package:learning_stud/view/sign_in.dart';



class EnrollForm extends StatefulWidget {
  const EnrollForm({super.key});

  @override
  State<EnrollForm> createState() => _EnrollFormState();
}

class _EnrollFormState extends State<EnrollForm> {
  

   final GlobalKey<FormState> formKey=GlobalKey<FormState>();
    final emailController = TextEditingController();
    
    void submitForm(){
      if(formKey.currentState!.validate()){


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
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: ClipPath(
            clipper: CustomAppBarClipper(),
            child: AppBar(
              title: Text('Enroll Form',
              textAlign: TextAlign.center,
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
        body: SingleChildScrollView(
          reverse: true,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(top:70,left: 40)),
              Column(children: [
                   SizedBox(
                    height: 40,
                   ),
                    Container(
                      height: 40,
                      width: 322,
                      color: Color.fromRGBO(245, 245, 245, 1),
                      child: TextFormField(
                      
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(30),
                          fillColor: Color.fromRGBO(245, 245, 245, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'USER NAME',
                          prefixIcon: Icon(Icons.person),
                          hintStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                          hintText: 'Enter your user name',
                          helperStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        validator: (value) {
                            if(value!.isEmpty){
                              return "Please enter username";
                            }
                            return null;
                          },
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 40,
                      width: 322,
                      color: Color.fromRGBO(245, 245, 245, 1),
                      child: TextField(
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(30),
                          fillColor: Color.fromRGBO(245, 245, 245, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'MOBILE NUMBER',
                          prefixIcon: Icon(Icons.phone),
                          hintStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                          hintText: 'Enter your mobile number ',
                          helperStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 40,
                      width: 322,
                      color: Color.fromRGBO(245, 245, 245, 1),
                      child: TextField(
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(30),
                          fillColor: Color.fromRGBO(245, 245, 245, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Course Name',
                          //prefixIcon: Icon(Icons.c),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          hintStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                          hintText: 'Enter your Course',
                          helperStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 40,
                      width: 322,
                      color: Color.fromRGBO(245, 245, 245, 1),
                      child: TextField(
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(30),
                          fillColor: Color.fromRGBO(245, 245, 245, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Nearest Branch',
                           suffixIcon: Icon(Icons.arrow_drop_down),
                          hintStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                          hintText: 'Enter your nearest branch',
                          helperStyle:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
              
                    ElevatedButton(
                        onPressed: () {
                          formKey.currentState!.validate();
                          // Navigator.pushReplacement(context,
                          //     MaterialPageRoute(builder: ((context) => BottomBar())));
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(48, 54, 124, 1),
                            fixedSize: Size(348, 53))),
                    //Padding(padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom)),
                  ]),
            ],
          ),
        )),
      
    );
  }
}
