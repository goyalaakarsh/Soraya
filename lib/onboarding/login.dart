import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox.expand(
        child: Stack(children:[ Image.asset("assets/images/welcome_bg.jpg",
        fit: BoxFit.cover, width: double.infinity, height: double.infinity,),
        LoginPage(),
      ],),),
       
      );
    
  }
}

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState()=> LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Container(

    );
  }
}

