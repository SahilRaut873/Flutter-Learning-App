
import 'package:flutter/material.dart';
import 'package:learning_stud/model/enroll_button.dart';
import 'package:learning_stud/model/enroll_form.dart';
import 'package:learning_stud/view/bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bkg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Transparent AppBar placed above the background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent, // Transparent background
              elevation: 0, // Remove shadow
              leadingWidth: 150,
              leading:    IconButton.outlined(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                      size: 25,
                    )),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white), // Title color
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white), // Menu icon color
                  onPressed: () {
                    // Handle menu action
                  },
                ),
              ],
            ),
          ),
          // Content
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 115, horizontal: 20).copyWith(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image container with shadow
                Container(
                  height: 270,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/prf3.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80), // Adjust this value to move text down
                      child: Text(
                        'Kiyansh Chetan Jadhav',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                buildProfileField('Contact No.'),
                SizedBox(height: 25),
                buildProfileField('Address'),
                SizedBox(height: 25),
                buildProfileField('Email'),
                 // Adding some extra space at the bottom

                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EnrollForm()));
                    },
                     child: MyButtonItems(
                                   color: Colors.white,
                                   child: Text(
                                     "Enroll Now",
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 22,
                                     ),
                                   ),
                                 ),
                   ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }

  Widget buildProfileField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
      child: Container(
        width: 280, // Reduced width of the input field
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          style: TextStyle(color: Color.fromRGBO(48, 55, 126, 1)),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            labelText: label,
            filled: true,
            fillColor: Colors.white.withOpacity(0.8), // Make the input field background semi-transparent
          ),
        ),
      ),
    );
  }
}
