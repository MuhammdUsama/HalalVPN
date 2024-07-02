import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

import 'Utility.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _CommingSoonState createState() => _CommingSoonState();
}

class _CommingSoonState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  Timer _timer;
  bool _isConnected = false;
  int _start = 10;
  int _seconds = 0;
  bool _isRunning = false;

  void startTimer() {
    print("start");

    if (_timer != null) {
      _timer.cancel();
    }

    setState(() {
      _isConnected = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_start > 0) {
          _start--;
        } else {
          timer.cancel();
          _isConnected = false;
        }
      });
    });
  }

  void _toggleTimer() {
    if (_isRunning) {
      _stopTimer();
      _resetTimer();
    } else {
      _startTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
    setState(() {
      _isRunning = true;
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  void _resetTimer() {
    _stopTimer();
    setState(() {
      _seconds = 0;
    });
  }

  String get _formattedTime {
    int hours = _seconds ~/ 3600;
    int minutes = (_seconds % 3600) ~/ 60;
    int seconds = _seconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void stopTimer() {
    print("Stop");
    if (_timer != null) {
      _timer.cancel();
    }

    setState(() {
      _isConnected = false;
      _start = 10; // Reset the timer duration
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: globalKey,
        body: Stack(children: <Widget>[
          Container(
            height: Responsive.height(100, context),
            width: Responsive.width(100, context),
            // color: Colors.white24,
            //   margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                //  scale: 0.6,
                image: AssetImage('Images/MenuBG.png'),
//                        fit: BoxFit.fill
                fit: BoxFit.cover,
              ),
            ),

            // child:  StaggeredGridView.countBuilder(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 12,
            //     itemCount: imageList.length,
            //     itemBuilder: (context, index) {
            //       return InkWell(
            //         child: Container(
            //          // height: Responsive.height(12, context),
            //           decoration: BoxDecoration(
            //               color: Colors.transparent,
            //               borderRadius: BorderRadius.all(
            //                   Radius.circular(15))
            //           ),
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.all(
            //                 Radius.circular(15)),
            //             child: FadeInImage.memoryNetwork(
            //               placeholder: kTransparentImage,
            //               image: imageList[index],fit: BoxFit.cover,),
            //           ),
            //         ),
            //         onTap: (){
            //           print(index);
            //           print(item.type);
            //           // Navigator.push(
            //           //   context,
            //           //   MaterialPageRoute(
            //           //       builder: (context) => Friends()),
            //           //);
            //         },
            //       );
            //     },
            //     staggeredTileBuilder: (index) {
            //       return StaggeredTile.count(1, index.isEven ? 1.2 : 1.2);
            //     }),
          ),
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/DottedBGImage.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: Responsive.height(10, context),
                  ),
                  Text(_isRunning ? '//Connected' : 'Disconnected',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppColors.themeMainColor,
                      ))),
                  //  SizedBox(height: 20),
                  Text(_formattedTime,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 52,
                        color: AppColors.white,
                      ))),
                  //SizedBox(height: 20),
                  Text("212.391.43.39",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.textGrey,
                      ))),
                  SizedBox(height: 20),
                  Container(
                    //  height: 40,
                    //color: Colors.white,
                    //width: Responsive.width(100, context),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Responsive.width(25, context),
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Images/upArrow.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        //100 Mb/s
                        Text("100 ",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColors.themeMainColor,
                            ))),
                        Text("Mb/s",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColors.white,
                            ))),
                        Spacer(),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Images/downArrow.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("90 ",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColors.themeMainColor,
                            ))),
                        Text("Mb/s",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AppColors.white,
                            ))),
                        SizedBox(
                          width: Responsive.width(25, context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 128,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("Images/CountryNameBG.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Responsive.width(6.5, context),
                        ),
                        Text("Canada",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: AppColors.white,
                            ))),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Images/ZAxisArrow.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // ElevatedButton(
                  //   onPressed: _toggleTimer,
                  //   child: Text(_isRunning ? 'Stop' : 'Start'),
                  // ),
                  // Text(
                  //   '$_start',
                  //   style: TextStyle(fontSize: 48),
                  // ),
                  SizedBox(height: 20),

                 InkWell(
                   child: Container(
                     height: Responsive.height(22, context),
                     width: 70,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("Images/StartButtonBG.png"),
                         fit: BoxFit.fill,
                       ),
                     ),
                     child: Column(
                       children: [
                         SizedBox(height: 12,),
                         _isRunning?SizedBox(): Container(
                           height: 30,
                           width: 30,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("Images/doubleArrow.png"),
                               fit: BoxFit.fill,
                             ),
                           ),
                         ),
                         _isRunning?SizedBox(): Spacer(),
                         Container(
                           height: 98,
                           width: 54,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("Images/PowerButtonBG.png"),
                               fit: BoxFit.fill,
                             ),
                           ),
                           child: Column(
                             children: [
                               SizedBox(height: 24,),
                               Text("${_isRunning ? 'Stop' : 'Start'}",
                                   style: GoogleFonts.poppins(
                                       textStyle: TextStyle(
                                         fontWeight: FontWeight.w600,
                                         fontSize: 10,
                                         color: AppColors.white,
                                       ))),
                               Spacer(),
                               Icon(Icons.power_settings_new,color:_isRunning?AppColors.themeMainColor: AppColors.white,size: 34 ,),
                               SizedBox(height: 12,),

                             ],
                           ),
                         ),
                         _isRunning?SizedBox(height: 8,):SizedBox(),
                         _isRunning?Transform.rotate(
                             angle: 180 * pi / 180, // Convert 80 degrees to radians
                             child:  Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("Images/doubleArrow.png"),
                                   fit: BoxFit.fill,
                                 ),
                               ),
                             ),) :


                         SizedBox(),

                         _isRunning ? Spacer():SizedBox(),
                         SizedBox(height: 8,),
                       ],
                     ),
                   ),
                   onTap: _toggleTimer

                 ),


                  SizedBox(
                    height: Responsive.height(10, context),
                  ),

                  //
                  // ElevatedButton(
                  //   onPressed:  _isConnected ? stopTimer : startTimer,
                  //   child: Text(_isConnected ? 'Stop Timer' : 'Start Timer'),
                  // ),
                  // ),
                ],
              )),
        ]),
      ),
    );
  }
}

class VerticalSwitch extends StatelessWidget {
  final bool isSwitched;
  final ValueChanged<bool> onToggle;
  final String onText;
  final String offText;

  VerticalSwitch({
    this.isSwitched,
    this.onToggle,
    this.onText,
    this.offText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          onText,
          style: TextStyle(
            color: isSwitched ? Colors.green : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Switch(
          value: isSwitched,
          onChanged: onToggle,
          activeColor: Colors.green,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey.shade400,
        ),
        Text(
          offText,
          style: TextStyle(
            color: !isSwitched ? Colors.red : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
