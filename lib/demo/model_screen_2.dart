import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoScreen_2 extends StatelessWidget {
  const DemoScreen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23272C),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 81,
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
              height: 38,
            ),
            Stack(
              children: [
                SvgPicture.asset("assets/Background_Shape.svg"),
                // Positioned(
                //     top: 80,
                //     left: 10,
                //     child: SvgPicture.asset("assets/Rectangle.svg")),
                Column(
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset("assets/Group.svg")),
                    ),
                    Text(
                      "Upgrade to PRO",
                      style: GoogleFonts.lexend(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD1D3D5),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Acess To Every Country",
                      style: GoogleFonts.lexend(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD1D3D5),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Cancel Anytime",
                      style: GoogleFonts.lexend(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD1D3D5),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SvgPicture.asset("assets/Line_1.svg"),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Rectangle_1.svg",
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 15,
                                    child: SvgPicture.asset(
                                      "assets/task.svg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Russia",
                                    style: GoogleFonts.lexend(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "11 location  168ms",
                                    style: GoogleFonts.lexend(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFC0C6D7),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 136,
                                  height: 61,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                      border:
                                          Border.all(color: Color(0xFF9CC1B4)),
                                      borderRadius: BorderRadius.circular(10)),

                                  child: TextButton(
                                      onPressed: () {},
                                      child: ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                          colors: [
                                            Color(0xFF9CC1B4),
                                            Color(0xFf91F5BC),
                                            Color(0xFF5EC0EA)
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          "Connect",
                                          style: GoogleFonts.lexend(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Rectangle_1.svg",
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 15,
                                    child: SvgPicture.asset(
                                      "assets/task.svg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Russia",
                                    style: GoogleFonts.lexend(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "11 location  168ms",
                                    style: GoogleFonts.lexend(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFC0C6D7),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 136,
                                  height: 61,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFF9CC1B4)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                          colors: [
                                            Color(0xFF9CC1B4),
                                            Color(0xFf91F5BC),
                                            Color(0xFF5EC0EA)
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          "Connect",
                                          style: GoogleFonts.lexend(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/Rectangle_1.svg",
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 15,
                                    child: SvgPicture.asset(
                                      "assets/task.svg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Russia",
                                    style: GoogleFonts.lexend(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "11 location  168ms",
                                    style: GoogleFonts.lexend(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFC0C6D7),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 136,
                                  height: 61,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFF9CC1B4)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                          colors: [
                                            Color(0xFF9CC1B4),
                                            Color(0xFf91F5BC),
                                            Color(0xFF5EC0EA)
                                          ],
                                        ).createShader(bounds),
                                        child: Text(
                                          "Connect",
                                          style: GoogleFonts.lexend(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),

                    BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      selectedItemColor: Color(0xFF5EC0EA), // Color for selected item
                      unselectedItemColor: Colors.grey, // Color for unselected items
                      backgroundColor: Color(0xFFC22
                      ),
                      items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.cloud),
                        label: 'Server',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.speed),
                        label: 'Speed Test',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                    ],)





                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );


  }

}
