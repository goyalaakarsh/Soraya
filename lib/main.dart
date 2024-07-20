import 'package:flutter/material.dart';
import 'onboarding/welcome.dart';
import 'product/productlisting.dart';
import 'product/productdetails.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.poppinsTextTheme();

    return MaterialApp(
      title: 'Soraya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF5D8F),
          secondary: const Color(0xFFFFC4D6),
          brightness: Brightness.light,
        ),
        textTheme: textTheme.apply(),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const Welcome(),
      // home: const ProductListing(),
      home: const ProductDetails(),
    );
  }
}
