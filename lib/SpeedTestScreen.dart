import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:halal_vpn/Utility.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;




class SpeedTestScreen extends StatefulWidget {
  @override
  _SpeedTestScreenState createState() => new _SpeedTestScreenState();
}



//class _SplashState extends State<SpeedTestScreen> {
class _SpeedTestScreenState extends State<SpeedTestScreen> {


  String downloadSpeed = '0';
  String uploadSpeed = '0';
  bool isLoading = false;
  Future<void> runSpeedTest() async {
    print("test run");
    setState(() {
      isLoading = true;
    });

    try {
      var response = await http.get(Uri.parse('https://fast.com/download'));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        setState(() {
          downloadSpeed = data['downloadSpeed'].toString();
          uploadSpeed = data['uploadSpeed'].toString();
          print(downloadSpeed);
          print(uploadSpeed);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load speed test results');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    runSpeedTest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     IconButton(
                //       icon: Icon(Icons.arrow_back, color: Colors.white),
                //       onPressed: () {
                //         // Handle back action
                //       },
                //     ),
                //     SizedBox(width: 8),
                //     Text(
                //       'Speed Test',
                //       style: TextStyle(
                //         fontSize: 24,
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 32),
                // Speed Test Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        // SizedBox(height: 4),

                        Row(children: [
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
                          Text("Download ",
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
                        ]),
                        SizedBox(height: 4),
                        Text(
                          '25Mbps',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: AppColors.white,
                                )))
                      ],
                    ),
                    Column(
                      children: [
                        // SizedBox(height: 4),

                        Row(children: [
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
                          //100 Mb/s
                          Text("Upload ",
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
                        ]),
                        SizedBox(height: 4),
                        Text(
                            '0.0Mbps',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: AppColors.white,
                                )))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 32),
                // Container(
                //   //  height: 40,
                //   //color: Colors.white,
                //   //width: Responsive.width(100, context),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: Responsive.width(16, context),
                //       ),
                //       Container(
                //         height: 24,
                //         width: 24,
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: AssetImage("Images/upArrow.png"),
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 4,
                //       ),
                //       //100 Mb/s
                //       Text("100 ",
                //           style: GoogleFonts.poppins(
                //               textStyle: TextStyle(
                //             fontWeight: FontWeight.w500,
                //             fontSize: 10,
                //             color: AppColors.themeMainColor,
                //           ))),
                //       Text("Mb/s",
                //           style: GoogleFonts.poppins(
                //               textStyle: TextStyle(
                //             fontWeight: FontWeight.w500,
                //             fontSize: 10,
                //             color: AppColors.white,
                //           ))),
                //       Spacer(),
                //       Container(
                //         height: 24,
                //         width: 24,
                //         decoration: BoxDecoration(
                //           image: DecorationImage(
                //             image: AssetImage("Images/downArrow.png"),
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 4,
                //       ),
                //       Text("90 ",
                //           style: GoogleFonts.poppins(
                //               textStyle: TextStyle(
                //             fontWeight: FontWeight.w500,
                //             fontSize: 10,
                //             color: AppColors.themeMainColor,
                //           ))),
                //       Text("Mb/s",
                //           style: GoogleFonts.poppins(
                //               textStyle: TextStyle(
                //             fontWeight: FontWeight.w500,
                //             fontSize: 10,
                //             color: AppColors.white,
                //           ))),
                //       SizedBox(
                //         width: Responsive.width(16, context),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 32),
                // Speed Gauge using Syncfusion Gauge
                SizedBox(
                  height: Responsive.height(32, context),
                  // Set the height as needed
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        interval: 10,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.1,
                          thicknessUnit: GaugeSizeUnit.factor,
                          color: Colors.grey[800],
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: 25, // Simulating 25 Mbps
                            width: 0.1,
                            sizeUnit: GaugeSizeUnit.factor,
                            color: Colors.teal,
                          )
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('25',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 45,
                                      color: AppColors.themeMainColor,
                                    ))),
                                Text('MB/s',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.5,
                                      color: AppColors.white,
                                    ))),
                              ],
                            ),
                            positionFactor: 0.1,
                            angle: 90,
                          ),
                        ],
                        labelOffset: -30,
                        majorTickStyle: MajorTickStyle(
                          length: 0.0,
                          thickness: 0,
                          lengthUnit: GaugeSizeUnit.factor,
                          color: Colors.white,
                        ),
                        minorTickStyle: MinorTickStyle(
                          length: 0.0,
                          thickness: 0,
                          lengthUnit: GaugeSizeUnit.factor,
                          color: Colors.white,
                        ),
                        axisLabelStyle: GaugeTextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Ping Info
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Column(
                //       children: [
                //         Icon(Icons.signal_cellular_alt, color: Colors.amber),
                //         SizedBox(height: 4),
                //         Text('Ping ms',
                //             style: TextStyle(color: Colors.grey, fontSize: 14)),
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Icon(Icons.signal_cellular_alt, color: Colors.blue),
                //         SizedBox(height: 4),
                //         Text('Jitter ms',
                //             style: TextStyle(color: Colors.grey, fontSize: 14)),
                //       ],
                //     ),
                //   ],
                // ),
                SizedBox(height: 32),
                // IP Info
                Text(
                  'Your IP: 51.77.108.159',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 32),
                // Test Again Button
                ElevatedButton(
                  onPressed: () {
                    // Handle test again action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // Change this to your desired color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
                  ),
                  child: Text(
                    'Test Again',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
