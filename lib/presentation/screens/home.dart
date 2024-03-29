import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Container(
            //   color: Colors.black.withOpacity(0.2),
            // ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      // color: const Color(0xFF4A4647).withOpacity(0.8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              Text('Розтермінування від забудовника',
                                style: GoogleFonts.manrope(
                                  color: Colors.black,
                                )
                                // TextStyle(
                                //   color: Colors.black,
                                //   fontSize: 25,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}