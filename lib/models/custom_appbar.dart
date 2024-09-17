import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,

      //setting shadows for aesthetics
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColorDark,
            offset: const Offset(4.0, 4.0),
            blurRadius: 6.8,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 6.8,
            spreadRadius: 1.0,
          )
        ],
      ),

      //adding title
      child: Text(
        "I'M POSSIBLE",
        style: GoogleFonts.poppins(
          letterSpacing: 4.5,
          color: Colors.deepPurple,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
