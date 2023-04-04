import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_/pages/tabung.dart';
import 'package:uts_/pages/trapesium.dart';

class BangunDatar extends StatefulWidget {
  const BangunDatar({super.key});

  @override
  State<BangunDatar> createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Hitung Bangun Datar",
          style: GoogleFonts.getFont(
            'Lato',
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Tabung();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hitung Tabung",
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Trapesium();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hitung Trapesium",
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
