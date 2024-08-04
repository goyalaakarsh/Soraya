import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class profile extends StatelessWidget{
  const profile({super.key});
  
  @override
  Widget build (BuildContext context){
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: Text('Soraya',
        style: GoogleFonts.kalnia(
          textStyle:TextStyle(fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
        ),
        ),
        backgroundColor:primaryColor,
         actions: [
          IconButton(
            icon: Icon(Icons.search, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag, size: 20, color: Colors.white),
            onPressed: () {},
          ),
        ], 
      ),
       body: profilePage(),

    );
  }
  }

  class profilePage extends StatefulWidget{
    @override
  State<profilePage> createState() => _profilePageState();
  }

  class _profilePageState extends State<profilePage> {

    final List<String> Info =['Personal Details','My Orders','My Wishlist','Shipping Address','My Card','Settings'];
    
    @override
    Widget build(BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                
              ),
            ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/01/16/24/44/1000_F_116244459_pywR1e0T3H7FPk3LTMjG6jsL3UchDpht.jpg',
                        ),
                      ),
                   ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Text('  Shreya Khandelwal',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                        ),
                      ),
                      Container(
                        child: Text('Username',style: TextStyle(fontSize:17 ),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
  }