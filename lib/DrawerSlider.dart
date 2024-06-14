
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:drawerbehavior/drawerbehavior.dart' as ii;
import 'package:google_fonts/google_fonts.dart';

import 'CommingSoon.dart';
import 'Utility.dart';

class DrawerSlide extends StatefulWidget {
  @override
  _DrawerSlideState createState() => _DrawerSlideState();
}

class _DrawerSlideState extends State<DrawerSlide> {
  int selectedMenuItemId;

  @override
  void initState() {
    // checkMenuConfiguration();
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  Widget headerView(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            color: Colors.transparent,
            height: Responsive.height(34, context),
            padding: EdgeInsets.fromLTRB(20, 12, 16, 0),
            child: Column(
              children: [
                SizedBox(height: 8,),
                // Row(
                //   children: [
                //     Spacer(),
                //     InkWell(
                //       child: Icon(
                //         FontAwesomeIcons.signOutAlt,
                //         size: 24,
                //         color: Colors.white,
                //       ),
                //       onTap: () async {
                //         SharedPreferences sharedPrefrences =
                //             await SharedPreferences.getInstance();
                //         sharedPrefrences.setBool('isUserLoggedIn', false);
                //         sharedPrefrences.setString('isUserRole', "Guest");
                //         AppConstant.userRole = UserRole.guest;
                //         restartApp();
                //
                //         // Navigator.push(
                //         //     context,
                //         //     MaterialPageRoute(
                //         //       builder: (context) => Login(),
                //         //     )
                //         // );
                //
                //         print("on SignOut presses");
                //       },
                //     ),
                //   ],
                // ),
                Row(
                  children: <Widget>[
                    // Icon(
                    //   Icons.ac_unit,
                    //   size: 40,
                    //   color: Colors.white,
                    // ),
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 0, top: 0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // height: Responsive.height(12, context),
                              decoration: BoxDecoration(
                                  color: Color(0xff27665B),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8))
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15)),
                                  child: Icon(Icons.close,color: AppColors.themeMainColor,)
                              ),),
                            Row(
                              children: [
                                SizedBox(width: Responsive.width(15, context),),
                                Container(
                                  height: 120,
                                  width: 120,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        image: new AssetImage('Images/VpnLogo.png'),
                                        fit: BoxFit.contain),
                                  ),),
                                SizedBox(width: Responsive.width(15, context),),
                              ],
                            ),


                            Divider(
                              color: Color(0xFFB0B0B0),
                              height: 2,
                            ),
                            // Text("h Seeker",
                            //     style: GoogleFonts.roboto(
                            //         textStyle: TextStyle(
                            //           fontWeight: FontWeight.w800,
                            //           fontSize: 24,
                            //           color: AppColors.themeMainColor,
                            //         ))),
                            // Text(
                            //     "Version 0.1",
                            //     style:GoogleFonts.roboto(
                            //         textStyle: TextStyle(
                            //           fontWeight: FontWeight.w400,
                            //           fontSize: 13,
                            //           color: AppColors.themeMainColor,
                            //         ))
                            // ),


                            SizedBox(height: 10,),
                            MaterialButton(
                              padding: EdgeInsets.all(4.0),
                              textColor: Colors.white,
                              splashColor: Colors.white.withOpacity(0.02),
                              elevation: 8.0,
                              child: Container(
                                height: Responsive.height(6, context),
                                width: Responsive.width(60, context),
                             //   color: Colors.black,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(('Images/PurchasePro.png')),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("",  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),

                                  ],
                                ),
                              ),
                              // ),
                              onPressed: () {
                                print("hello");
                                //goToLogin(context,"","");
                              },
                            ),
                            SizedBox(height: 10,),

                            // Text(
                            //     "Version 0.1",
                            //     style:GoogleFonts.roboto(
                            //         textStyle: TextStyle(
                            //           fontWeight: FontWeight.w400,
                            //           fontSize: 13,
                            //           color: AppColors.themeMainColor,
                            //         ))
                            // ),
                          ],
                        )),
                  ],
                ),
              ],
            )),
        Divider(
          color: Colors.transparent,
          height: 16,
        )
      ],
    );
  }

  Widget footerView(BuildContext context) {
    return Column(
      children: <Widget>[

        Divider(height: 2,color: Colors.white,indent: 16,endIndent: Responsive.width(20, context),),
        Container(
          //color: Colors.transparent,
            height: Responsive.height(20, context),
            width: Responsive.width(100, context),
            padding: EdgeInsets.fromLTRB(20, 12, 16, 20),
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage(('images/MenuBottomBG.png')),
              //   fit: BoxFit.fill,
              // ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [

                InkWell(
                  child: Text("Version 1.0",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 13,
                            color: AppColors.white,
                          ))),
                  onTap: () async {
                    // SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
                    // sharedPrefrences.setBool('isUserLoggedIn', false);
                    // sharedPrefrences.setString('isUserRole', "Guest");
                    // AppConstant.userRole = UserRole.guest;
                    restartApp();
                  },
                )

              ],)
        ),
        Divider(
          color: Colors.transparent,
          height: 16,
        )
      ],
    );
  }
  Future<void> restartApp() async {
   /// await FlutterRestart.restartApp();
  }

  // void opensheet() async {
  //   showModalBottomSheet(
  //       context: (context),
  //       enableDrag: true,
  //       isScrollControlled: true,
  //       isDismissible: true,
  //       builder: (context) {
  //         return DraggableScrollableSheet(
  //             initialChildSize: 0.60,
  //             //set this as you want
  //             maxChildSize: 0.60,
  //             //set this as you want
  //             minChildSize: 0.20,
  //             //set this as you want
  //             expand: false,
  //             builder: (context, scrollController) {
  //               return SearchPage();
  //             });
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          // Background image



          DrawerScaffold(

            appBar: AppBar(
                backgroundColor: AppColors.backgroundColor,
                elevation: 0,
                title: Text(menu.items[selectedMenuItemId].title),
                centerTitle: true,
                flexibleSpace: Container(
                  margin: EdgeInsets.only(top: kIsWeb ? 0 : 28),
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage(('images/NavBarBG.png')),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                actions: [
                  InkWell(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 28,
                    ),
                    onTap: () {
                     // opensheet();
                    },
                  ),
                  SizedBox(
                    width: 12,
                  )
                ]),
            drawers: [
              SideDrawer(
                percentage: 1,
                // menu: buildCustomMenu(),
                headerView: headerView(context),
                footerView: footerView(context),
                textStyle: GoogleFonts.poppins(textStyle:
                TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w500),
                ),
                menu: menuWithIcon,
                animation: true,
                alignment: Alignment.topLeft,
                background: DecorationImage(
                    scale: 0.6,
                    image: AssetImage('Images/MenuBG.png'),
                    fit: BoxFit.fitWidth
                ),
                selectorColor: AppColors.white,
                selectedItemId: selectedMenuItemId,
                onMenuItemSelected: (itemId) {
                  setState(() {
                    print("itemId $itemId");
                    selectedMenuItemId = itemId;
                  });
                },
              )
            ],
            // mainIcon: buildCustomMainIcon(),

            builder: (context, id) => IndexedStack(
              index: id,
              children: menu.items
                  .map((e) => Center(
                child: _getUserPage(e.title),
                //  AppConstant.userRole == UserRole.user ? _getUserPage(e.title):AppConstant.userRole == UserRole.guest ?_getUserPage(e.title),
              ))
                  .toList(),
            ),

          )
        ]));
  }

  _getUserPage(String page) {
    print("pages $page");
    switch (page) {
      case "Home":
        print("Home page");
        return CommingSoon();
      case "Speed Test":
        print("My Account");
        return CommingSoon();
      case "Language":
        print("FavPostPage");
        return CommingSoon();
      case "Setting":
        print("Privacy Policy");
        return CommingSoon();
      case "Terms & conditions":
        print("page no 7");
        return CommingSoon();
      case "AS":
        print("page no 8");
        return CommingSoon();
      case "SCHOLARS":
        print("page no 9");
        return CommingSoon();
      case "ADD MASJID INFO":
        print("page no 9");
        return CommingSoon();
      case "FIND MEMBERS":
        print("page no 9");
        return CommingSoon();
      case "USER SETTING":
        print("page no 9");
        return CommingSoon();
      default:
        return CommingSoon();
    }
  }

// _getAdminPage(int page) {
//   print("pages $page");
//   switch (page) {
//     case 0:
//       print("Home page");
//       return CustomTabBar();
//     case 1:
//       print("My Account");
//       return CommingSoon();
//     case 2:
//       print("FavPostPage");
//       return PostPage(isFavorite: true,);
//     case 3:
//       print("PrayerTime");
//       return PrayerTime();
//     case 4:
//       print("page no 7");
//       return MyQuestionTabBar();
//     case 5:
//       print("page no 8");
//       return AskQuestion();
//     case 6:
//       print("page no 9");
//       return ScholarPage();
//     case 7:
//       print("page no 9");
//       return AddMasjidInfo(isEditMode: false,);
//     case 8:
//       print("page no 9");
//       return FindMember();
//     default:
//       return CommingSoon();
//   }
// }
// _getAdminPage(String page) {
//   print("pages $page");
//
//   switch (page) {
//     case "Home":
//       print("Home page");
//       return CustomTabBar();
//     // case "MY ACCOUNT":
//     //   print("My Account");
//     //   return CommingSoon();
//     case "FAVORITE POSTS":
//       print("FavPostPage");
//       return PostPage(isFavorite: true,);
//     case "Prayer Time":
//       print("PrayerTime");
//       return PrayerTime();
//     case "MY QUESTION":
//       print("page no 7");
//       return MyQuestionTabBar();
//     case "ASK QUESTIONS":
//       print("page no 8");
//       return AskQuestion();
//     case "SCHOLARS":
//       print("page no 9");
//       return ScholarPage();
//     case "ADD MASJID INFO":
//       print("page no 9");
//       return AddMasjidInfo(isEditMode: false,);
//     case "FIND MEMBERS":
//       print("page no 9");
//       return FindMember();
//     default:
//       return CommingSoon();
//   }
// }

}

enum UserRole {
  admin,
  user,
  guest,
}




final menu = ii.Menu(
  items:   UserMenuitems.map((e) => e.copyWith(prefix: null)).toList());

final menuWithIcon = ii.Menu(
  items:  UserMenuitems);






List<ii.MenuItem> UserMenuitems = [
  new ii.MenuItem<int>(
    id: 0,
    title: 'Home',
    prefix: Icon(Icons.home_rounded,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),
  ),
  new ii.MenuItem<int>(
    id: 1,
    title: 'Speed Test',
    prefix: Icon(Icons.speed_outlined,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 2,
    title: 'Language',
    prefix: Icon(Icons.language,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 3,
    title: 'Setting',
    prefix: Icon(Icons.settings,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 4,
    title: 'Privacy Policy',
    prefix: Icon(Icons.privacy_tip,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 5,
    title: 'Terms & conditions',
    prefix: Icon(Icons.document_scanner,color: AppColors.themeMainColor,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 6,
    title: '',
    prefix: Icon(Icons.question_answer,color: Colors.transparent,),
    textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: AppColors.white, fontSize: 15.0, fontWeight: FontWeight.w400),),

  ),
  new ii.MenuItem<int>(
    id: 7,
    title: "FAVORITE POSTS",
    prefix: Icon(Icons.favorite),
  ),
  new ii.MenuItem<int>(
    id: 8,
    title: 'FIND MEMBERS',
    prefix: Icon(Icons.support_agent),
  ),
];


