import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            size: 70,
            color: Color.fromARGB(255, 25, 124, 131),
          ),
          Text(
            "Drawer View",
            style: GoogleFonts.sanchez(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 25, 124, 131),
            ),
          ),
        ],
      ),
    );
  }
}

