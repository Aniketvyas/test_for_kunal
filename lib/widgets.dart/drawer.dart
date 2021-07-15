import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
// void main() => runApp(MyApp());
 
class MyDrawer extends StatelessWidget {
  final imageUrl = 'https://media-exp1.licdn.com/dms/image/C5603AQFYzBwRSPIj2Q/profile-displayphoto-shrink_200_200/0/1611209887678?e=1628121600&v=beta&t=d3hTMAZB1L6VQKB-SKvYr_ut6A2fz7K65q76LhC8NQw';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color:Colors.deepPurple,
        child: ListView(
        padding:EdgeInsets.zero,
        children: [
        DrawerHeader(
          padding:EdgeInsets.zero,
          
          child: UserAccountsDrawerHeader(
          margin:EdgeInsets.zero,
          // decoration: BoxDecoration(
          //   color:Colors.white60
          // ),
          accountName: Text("Aniket Vyas "),
          accountEmail: Text('blh@blh.vm'),
          currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)
          ) 
          )
        ),
        ListTile(
          leading: Icon(CupertinoIcons.home,color: Colors.white,),
          title: Text("Home" ,style: TextStyle(color:Colors.white),
          textScaleFactor: 1.2,)
          ),
          ListTile(
          leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
          title: Text("Profile" ,style: TextStyle(color:Colors.white),
          textScaleFactor: 1.2,)
          ),
          ListTile(
          leading: Icon(CupertinoIcons.mail,color: Colors.white,),
          title: Text("Email Me" ,style: TextStyle(color:Colors.white),
          textScaleFactor: 1.2,)
          ),
        
      ],)
      )
      
    );
}}