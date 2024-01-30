import 'package:flutter/material.dart';
import 'package:flutter_drawer/widgets/body_back.dart';
import 'package:flutter_drawer/widgets/custer_drawer.dart';

class AboutUsScreec extends StatefulWidget {
  const AboutUsScreec({super.key});
    static const String routeName = '/AboutUsScreen';

  @override
  State<AboutUsScreec> createState() => _AboutUsScreecState();
}

class _AboutUsScreecState extends State<AboutUsScreec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('About Us')),
      body: BackGroundContainer(fillbody()),
    );
  }

  Widget fillbody(){
    return Column(
      mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(child: Text('About Us'))
      ],
    );
  }
}