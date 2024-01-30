import 'package:flutter/material.dart';
import 'package:flutter_drawer/screens/home_screen.dart';
import 'package:flutter_drawer/widgets/body_back.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundContainer(fillbody())
    );
  }

  fillbody(){
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
      
      TextButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));  
      }, child: const Text('Login'))
    ],);

  }
}