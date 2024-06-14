import 'package:flutter/material.dart';
import 'package:halal_vpn/DrawerSlider.dart';
import 'package:halal_vpn/main.dart';


//import 'package:splashscreen/splashscreen.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:your_splash/your_splash.dart';

import 'Utility.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}



class _SplashState extends State<Splash> {

  // checkMenuConfiguration() async {
  //   SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
  //   var isuserRole  = sharedPrefrences.getString('isUserRole');
  //   isuserRole == "Admin" ? AppConstant.userRole = UserRole.admin:
  //   isuserRole == "Guest" ? AppConstant.userRole = UserRole.guest:AppConstant.userRole = UserRole.user;
  //   print("isuserRole is$isuserRole");
  //   print("app constant ${AppConstant.userRole}");
  // }
  @override
  void initState() {
    // TODO: implement initState
    //checkMenuConfiguration();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen.timed(
        seconds: 3,
        route: MaterialPageRoute(builder: (_) => DrawerSlide()),
        body: Scaffold(
          backgroundColor: Color(0xff15363B),
          body: Container(
                  height: Responsive.height(100, context),
                  width: Responsive.width(100, context),
                 margin: EdgeInsets.only(top: 24,bottom: 0,left: 0,right: 0),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('Images/Splash.png'),
                      fit: BoxFit.fill
                   ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: Responsive.height(69, context),),
                       // Text("Sunnah Seeker",),

                      // Container(
                      //   height: Responsive.height(20, context),
                      //   width: Responsive.width(85, context),
                      //   child: Text("Empowering Your Islamic Journey, Wherever You Are.",
                      //              textAlign: TextAlign.center,
                      //              // style: GoogleFonts.roboto(
                      //              //     textStyle: TextStyle(
                      //              //       fontWeight: FontWeight.w500,
                      //              //       fontSize: 16,
                      //              //       color: AppColors.lightTextColor,
                      //              //     ))
                      //          ),),

                       //   ),
                              //TextStyle(color: Colors.white,fontSize: 24),,)),
                    ],
                  ),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: <Widget>[
                  //     Container(
                  //         height: Responsive.height(20, context),
                  //         width: Responsive.width(100, context),
                  //         margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //         // decoration: new BoxDecoration(
                  //         //   image: new DecorationImage(
                  //         //       image: new AssetImage('images/SplashLogo.png'),
                  //         //       fit: BoxFit.fill),
                  //         ///),
                  //         child: Text("WELCOME",style: TextStyle(color: Colors.white,fontSize: 24),textAlign: TextAlign.center,)),
                  //     // MaterialButton(
                  //     //   padding: EdgeInsets.all(8.0),
                  //     //   textColor: Colors.white,
                  //     //   splashColor: Colors.greenAccent,
                  //     //   elevation: 8.0,
                  //     //   child: Container(
                  //     //     height: Responsive.height(6, context),
                  //     //     width: Responsive.width(78, context),
                  //     //     color: Colors.black
                  //     //     ,
                  //     //     child: Column(
                  //     //       mainAxisAlignment: MainAxisAlignment.center,
                  //     //       crossAxisAlignment: CrossAxisAlignment.center,
                  //     //       children: [
                  //     //         Text("Login",  style: TextStyle(
                  //     //           fontSize: 17,
                  //     //           color: Colors.white,
                  //     //           fontWeight: FontWeight.bold,
                  //     //         )),
                  //     //
                  //     //       ],
                  //     //     ),
                  //     //   ),
                  //     //   // ),
                  //     //   onPressed: () {
                  //     //     print("hello");
                  //     //     goToLogin(context,"","");
                  //     //   },
                  //     // ),
                  //   ],
                  // ),
                )
              // child:
            ),
        //   ),
        // ),
      ),
    );
  }
}



