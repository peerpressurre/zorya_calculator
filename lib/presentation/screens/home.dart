import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xFFE0B76F),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Розтермінування від забудовника',
                      style: GoogleFonts.manrope(color: Colors.black,
                     fontSize: 25), 
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
      )
    );
  }
}