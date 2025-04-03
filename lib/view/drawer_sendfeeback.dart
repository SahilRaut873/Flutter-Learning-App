
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:learning_stud/view/bottom_navigation.dart';

class FeedBackForm extends StatefulWidget {
  const FeedBackForm({super.key});

  @override
  State<FeedBackForm> createState() => _FeedBackFormState();
}

class _FeedBackFormState extends State<FeedBackForm> {
  double rating = 0.0;
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
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromRGBO(48, 54, 124, 1),
            title: Text("FeedBack",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            leadingWidth: 100,
            leading: IconButton.outlined(
    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context)=>BottomBar())));
    //Navigator.pop(context);
    }
  ), 
          
          ),

          body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/crop_bg.jpeg"),
                fit: BoxFit.cover,
              )),
              child: SingleChildScrollView(
                reverse: false,
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      // Row(
                      //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     IconButton.outlined(
                      //         onPressed: () {
                      //           Navigator.pushReplacement(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => HomeScreen()));
                      //         },
                      //         icon: const Icon(
                      //           Icons.arrow_back_ios_new_outlined,
                      //           color: Colors.white,
                      //           size: 25,
                      //         )),
                      //     const Text(
                      //       "Feedback",
                      //       style: TextStyle(
                      //           fontSize: 25,
                      //           fontWeight: FontWeight.w700,
                      //           color: Colors.white),
                      //     ),
                          // IconButton.outlined(
                          //     onPressed: () {},
                          //     icon: const Icon(
                          //       Icons.menu,
                          //       color: Colors.white,
                          //       size: 40,
                          //     )),
                        
                      
                      //SizedBox(height: 20,),
                      // Image(image: AssetImage("assets/Feedback_page.png"),
                      // height: 250,
                      // width: 270,
                      // ),
                      Container(
                        height: 230,
                        width: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Feedback_page.png"))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 460.5,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.01, 0.01), blurRadius: 0.5)
                            ]),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(20)),
                            Text(
                              "        Send us your feedback\nDo you have a FeedBackForm let us\n         know in the field bellow",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(48, 54, 124, 1)),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Please rate your experience",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(48, 54, 124, 1)),
                            ),
                            PannableRatingBar(
                              rate: rating,
                              items: List.generate(
                                  5,
                                  (index) => const RatingWidget(
                                        selectedColor: Colors.yellow,
                                        unSelectedColor: Colors.grey,
                                        child: Icon(
                                          Icons.star,
                                          size: 40,
                                        ),
                                      )),
                              onChanged: (value) {
                                // the rating value is updated on tap or drag.
                                setState(() {
                                  rating = value;
                                });
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "How was your experiance?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(219, 102, 39, 1)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 152,
                              width: 322,
                              child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  //contentPadding: EdgeInsets.all(30),
                                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  // labelText: 'MESSAGE',hintStyle: TextStyle(
                                  //   fontSize: 15,
                                  //fontWeight: FontWeight.w400
                                  //),
                                  hintText: 'Describe your experience here...',
                                  helperStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=> Home1())));
                                },
                                child: Text(
                                  "Send Feedback",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(48, 54, 124, 1),
                                    fixedSize: Size(300, 35))),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).viewInsets.bottom)),
                    ]
                                  
              )
      )
      ),
      )
              
    );
  }
}
