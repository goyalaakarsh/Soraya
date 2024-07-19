import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login.dart';
import 'signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/welcome_illus.svg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 25),
              Text(
                'Soraya',
                style: GoogleFonts.kalnia(
                  textStyle: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    // color: primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'From Basics to Glam,\nall in one place!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[850],
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 95, vertical: 17),
                  backgroundColor: primaryColor,
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 16),
                  backgroundColor: secondaryColor,
                  side: BorderSide(color: primaryColor),
                ),
                child: Text(
                  'Signup',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900],
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
