import 'dart:ui';

import 'package:flutter/material.dart';

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
             Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust sigmaX and sigmaY for blur intensity
            child: Container(
              color: Colors.transparent,
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
                   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      // color: const Color(0xFF4A4647).withOpacity(0.8),
                      color: Colors.white.withOpacity(0.7)
                      
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              // Text('Розтермінування від забудовника',
                              //   style:
                              //   //  GoogleFonts.manrope(
                              //   //   color: Colors.black,
                              //   // )
                              //   TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 25,
                              //   ),
                              // )
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