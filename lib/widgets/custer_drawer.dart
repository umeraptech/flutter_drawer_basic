
import 'package:flutter/material.dart';

import '../routes/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
           createDrawerHeader(context),
           createDrawerBody(icon: Icons.home, text: "Home", onTap: (){
            Navigator.pushReplacementNamed(context, PageRoutes.home);
           }),
           createDrawerBody(icon: Icons.home, text: "About Us", onTap: (){
            Navigator.pushReplacementNamed(context, PageRoutes.about);
           }),
           const Divider(
            color: Colors.yellow
           ),
            ListTile(
            title:const  Text('App. ver. 1.0.0',style: TextStyle(color: Colors.white),),
            onTap: (){},
           )
          ],
        )
      )
    );
  }
}

Widget createDrawerHeader(BuildContext context){
  return  SizedBox(
    height: 250.0,
    child: DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/banner.jpg'),
          fit: BoxFit.fill
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('Muhamamd Umer',style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
      ),
    
  );
}

Widget createDrawerBody({
  required IconData icon,
  required String text,
  required GestureTapCallback onTap
}){
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon, color: Colors.redAccent,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(text,
          style:  TextStyle(color:Colors.white),
            
          ),
          ),
          
      ],
    ),
    onTap: onTap
  );
}


