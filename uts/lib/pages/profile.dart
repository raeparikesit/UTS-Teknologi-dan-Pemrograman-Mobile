import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("assets/images/foto.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Muhammad Raehan Parikesit ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("123200149"),
              const SizedBox(
                height: 20,
              ),
              const Text("Teknologi Dan Pemrograman Mobile IF-C"),
              const SizedBox(
                height: 20,
              ),
              const Text("Yogyakarta 03 Agustus 2002"),
              const SizedBox(
                height: 20,
              ),
              const Text("Harapan bermanfaat bagi masyarakat sekitar"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(
                          username: '',
                        );
                      },
                    ),
                  );
                },
                child: Text(
                  "Logout",
                  style: GoogleFonts.getFont(
                    'Lato',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
