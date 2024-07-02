import 'package:flutter/material.dart';
import 'package:halal_vpn/Utility.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'Images/LoginBG.png',
             // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Sign-up form
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: Responsive.height(22, context),),
                    Text(
                      'Create Account',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: AppColors.white,
                          )),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Please signup in to continue',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16),
                    // Name field
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    // Email field
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),

                    // Password field
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),

                    // Confirm Password field
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),

                    // Phone number field
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black45,
                        prefixIcon: Icon(Icons.phone, color: Colors.white),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 24),
                    // Sign up button
                    ElevatedButton(
                      onPressed: () {
                        // Handle sign up action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal, // Change this to your desired color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8.0,),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Sign in text
                    TextButton(
                      onPressed: () {
                        // Handle sign in navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Already have an account? SIGN IN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
