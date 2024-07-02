import 'package:flutter/material.dart';
import 'package:halal_vpn/Utility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignUPScreen.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
      body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'Images/LoginBG.png',
                // height: Responsive.height(100, context),// Replace with your image path
                // width: Responsive.width(100, context),
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16.0),

                      decoration: BoxDecoration(
                      //  color: Color(0xFF2C2C2C),
                        //borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: Responsive.height(20, context),),
                          Text(
                            'Login',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                    color: AppColors.white,
                                  ))),
                          SizedBox(height: 0.0),
                          Text(
                            'Please sign in to continue',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: AppColors.white,
                                  ))),
                          SizedBox(height: 32.0),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.white70),
                              labelText: 'EMAIL',
                              labelStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: AppColors.white,
                                  )),
                              filled: true,
                              fillColor: Color(0xFF3A3A3A),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.themeMainColor,
                                  )),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.white70),
                              labelText: 'PASSWORD',
                              labelStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: AppColors.white,
                                  )),
                              filled: true,
                              fillColor: Color(0xFF3A3A3A),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),

                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility, color: Colors.white70),
                                onPressed: () {
                                  // Toggle password visibility
                                },
                              ),
                            ),
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.themeMainColor,
                                )),
                            obscureText: true,
                          ),
                          SizedBox(height: 8.0),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                // Forgot password action
                              },
                              child: Text(
                                'FORGOT PASSWORD?',
                                style: TextStyle(color: Colors.tealAccent),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Log in action
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.white54,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'or',
                                  style: TextStyle(color: Colors.white54),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Image.asset('Images/google_icon.png'),
                                onPressed: () {
                                  // Google sign-in action
                                },
                              ),
                              SizedBox(width: 16.0),
                              IconButton(
                                icon: Image.asset('Images/facebook_icon.png'),
                                onPressed: () {
                                  // Facebook sign-in action
                                },
                              ),
                              SizedBox(width: 16.0),
                              IconButton(
                                icon: Image.asset('Images/dropbox_icon.png'),
                                onPressed: () {
                                  // Dropbox sign-in action
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextButton(
                                onPressed: () {
                                  //SignUpScreen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()),
                                  );
                                  // Sign-up action
                                },
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(color: Colors.tealAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),

    );
  }
}
