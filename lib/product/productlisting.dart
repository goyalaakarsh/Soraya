import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListing extends StatelessWidget {
  const ProductListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soraya',
          style: GoogleFonts.kalnia(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite, size: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text('Product Listing Content'),
      ),
    );
  }
}
