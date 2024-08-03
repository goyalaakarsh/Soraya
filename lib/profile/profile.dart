import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class profile extends StatelessWidget{
  const profile({super.key});
  
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Soraya',
        style: GoogleFonts.kalnia(
          textStyle:TextStyle(fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
        ),
        ),
      ),
    );
  }
  }