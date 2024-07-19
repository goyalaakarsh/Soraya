import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListing extends StatelessWidget {
  const ProductListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    List<Product> products = [
      Product(name: 'Product 1', price: '\$25.99', brand: 'Brand A'),
      Product(name: 'Product 2', price: '\$19.99', brand: 'Brand B'),
      Product(name: 'Product 3', price: '\$29.99', brand: 'Brand C'),
      Product(name: 'Product 4', price: '\$39.99', brand: 'Brand D'),
      Product(name: 'Product 5', price: '\$22.99', brand: 'Brand E'),
      Product(name: 'Product 6', price: '\$17.99', brand: 'Brand F'),
      Product(name: 'Product 7', price: '\$34.99', brand: 'Brand G'),
    ];

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: (products.length / 2).ceil(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ProductCard(product: products[index * 2]),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: index * 2 + 1 < products.length ? ProductCard(product: products[index * 2 + 1]) : SizedBox.shrink(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                'assets/images/makeup.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    // IconButton(
                    //   icon: Icon(Icons.favorite_outline, size: 10),
                    //   onPressed: () {
                    //   },
                    // ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
                      ),
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String brand;

  Product({required this.name, required this.price, required this.brand});
}
