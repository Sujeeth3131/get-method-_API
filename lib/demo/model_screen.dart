import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Model_Screen extends StatelessWidget {
  const Model_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23272C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 52,
            ),
            Text(
              'You are Safe',
              style: GoogleFonts.lexend(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color(0xFFD1D3D5),
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Text(
              'Connecting Time',
              style: GoogleFonts.lexend(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xFFD1D3D5),
              ),
            ),
            Text(
              '00:30:26',
              style: GoogleFonts.lexend(
                fontSize: 56,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFF),
              ),
            ),
            SizedBox(
              height: 12,
            ),

            SizedBox(
              height: 46,
            ),
            Stack(children: [
              SvgPicture.asset(
                "assets/safe.svg",
                width: 211,
                height: 231,
              ),
              SvgPicture.asset("Background_Shape.svg",fit: BoxFit.cover,)
            ],
               
              
            ),
            // Stack(
            //   children: [
            //     // Background Image
            //     Positioned.fill(
            //       child: Image.asset(
            //         'assets/background.jpg', // Replace with your background image path
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     // Foreground Image
            //     Center(
            //       child: Image.asset(
            //         'assets/foreground.png', // Replace with your foreground image path
            //         height: 150,
            //         width: 150,
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 59,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/download.svg",
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Download',
                          style: GoogleFonts.lexend(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF78358)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '123.6 Gbp/s',
                      style: GoogleFonts.lexend(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF78358),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     SvgPicture.asset("assets/download.svg",width: 30,height: 30,),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'Download',
                    //       style: GoogleFonts.lexend(
                    //           fontSize: 24, fontWeight: FontWeight.bold,color:Color(0xFF78358
                    //       )),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/download (1).svg",
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Upload',
                          style: GoogleFonts.lexend(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF78358)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '268.4 Gbp/s',
                      style: GoogleFonts.lexend(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF78358),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     SvgPicture.asset("assets/download.svg",width: 30,height: 30,),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'Download',
                    //       style: GoogleFonts.lexend(
                    //           fontSize: 24, fontWeight: FontWeight.bold,color:Color(0xFF78358
                    //       )),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Text(
              "Toronto",
              style: GoogleFonts.lexend(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xFFC0C6D7),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Singapore",style: GoogleFonts.lexend(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color(0xFFC0C6D7),
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              "IP 43.63.8373.9373",
              style: GoogleFonts.lexend(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xFFC0C6D7),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomNavigationBar(items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ])
          ],
        ),
      ),
    );
  }
}
