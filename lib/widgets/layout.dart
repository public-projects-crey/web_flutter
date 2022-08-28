import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Image.asset(
          'assets/images/me_cuadra.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("publicaiones",
              style: GoogleFonts.montserrat(
                  color: Colors.blue[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            width: 40,
          ),
          Text("publicaiones",
              style: GoogleFonts.montserrat(
                  color: Colors.blue[900],
                  fontSize: 30,
                  fontWeight: FontWeight.normal))
        ],
      ),
    );
  }
}
