import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'product/productdetails.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soraya',
          style: GoogleFonts.kalnia(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, size: 20, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag, size: 20, color: Colors.white)),
          IconButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalProfile()),);
              },
              icon:
                  Icon(Icons.account_circle_rounded, size: 20, color: Colors.white)),
        ],
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 33,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 1.0, horizontal: 15.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 189, 189),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 189, 189),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Expanded(child: HomePage()),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  final List<String> Titles = ['Makeup','Skin','Hair', 'Appliances','Bath & Body','Fragrance'];
   List<Product> products = [
      Product(image: 'assets/images/m1.png', name: 'Product 1', price: '\$25.99', brand: 'Brand A', rating: 4),
      Product(image: 'assets/images/m2.png', name: 'Product 2', price: '\$19.99', brand: 'Brand B', rating: 3),
      Product(image: 'assets/images/m3.png', name: 'Product 3', price: '\$29.99', brand: 'Brand C', rating: 5),
      Product(image: 'assets/images/m4.png', name: 'Product 4', price: '\$39.99', brand: 'Brand D', rating: 2),
      Product(image: 'assets/images/m5.png', name: 'Product 5', price: '\$22.99', brand: 'Brand E', rating: 4),
      Product(image: 'assets/images/m6.png', name: 'Product 6', price: '\$17.99', brand: 'Brand F', rating: 5),
      Product(image: 'assets/images/m7.png', name: 'Product 7', price: '\$34.99', brand: 'Brand G', rating: 3),
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        SizedBox(height: 7,),
        Container(
          height: 150,
          child: PageView(
            children: [
              Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(232, 170, 64, 241), 
                borderRadius: BorderRadius.circular(12), ), 
                child: Center(
                  child: Text(
                    "Ad 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              
              Container(
                decoration: BoxDecoration(
                color: Colors.yellow[200], 
                borderRadius: BorderRadius.circular(15), ), 
                child: Center(
                  child: Text(
                    "Ad 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                color: Colors.blue[200], 
                borderRadius: BorderRadius.circular(15), ), 
                child: Center(
                  child: Text(
                    "Ad 3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold ),),),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Titles.length,
            itemBuilder: (context, index) {
              return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                        backgroundColor: const Color(0xFFFFC4D6),
                        child: Text(
                          Titles[index][0],
                          style: TextStyle(color: Colors.white),
                        ),),
                         SizedBox(height: 5),

                      Text(Titles[index]),              
                     ],
                   ),
                 );
            },
          ),
        ),
        Container(
          child: Text('Featured', style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold ),),
        ),
        SizedBox(height: 15,),
        Expanded(
  child: ListView.builder(
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index]; 
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(5, (index) {
                        if (index < product.rating) {
                          return Icon(Icons.star, color: Colors.orangeAccent, size: 12);
                        } else {
                          return Icon(Icons.star_border, color: Colors.yellow, size: 12);
                        }
                      }),
                    ),
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      product.brand,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            padding: EdgeInsets.symmetric(horizontal: 11, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Add to Bag',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.shopping_bag,
                                size: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
)

      ],
    );
  }
}

class Product {
  final String name;
  final String price;
  final String brand;
  final int rating;
  final String image;

  Product({required this.name, required this.price, required this.brand, required this.rating, required this.image});
}
