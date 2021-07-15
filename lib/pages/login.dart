import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/utils/routes.dart';

// import 'package:flutter/material.dart';

 
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()){
setState(() {
      changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1 ));
      await Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
      }
    }
    
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key : _formKey,
          child:Column(
        children: [
          Image.asset("assets/images/login_page.png",fit:BoxFit.cover,height: 400,),
          SizedBox(height:20.0),
          Text("Welcome, $name",
          style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            children : [
              TextFormField(decoration:InputDecoration(
                hintText: "Username",
                labelText: "Enter Username",),
                validator: (value) {
                  if(value!.isEmpty){
                    return "username cannot be empty";
                  }
                  // else if (value.length<= 4){
                  //   return "Password is too short";
                  // }
                },
                onChanged: (value) {
                  name=value;
                  setState(() {
                    
                  });
                },
                ),
              TextFormField(
                decoration:InputDecoration(
                  hintText: "Password",
                  labelText: "Enter Password",),
                  validator: (value) {
                  if(value!.isEmpty){
                    return "Password cannot be empty";
                  }
                  else if (value.length<= 4){
                    return "Password is too short";
                  }
                },
                  obscureText: true,),
              SizedBox(height:20.0),   
              InkWell(
                onTap: () => moveToHome(context),
                child:AnimatedContainer(
                  duration: Duration(seconds: 1),
                width: changeButton? 50 : 150,
                height:50,
                alignment: Alignment.center,
                child: changeButton 
                ? Icon(
                  Icons.done,
                  color:Colors.white
                ) 
                 : Text(
                  'Login',style:TextStyle(
                    color:Colors.white,
                    fontSize:18,
                    fontWeight: FontWeight.bold)
                ),
                decoration: BoxDecoration(
                color:Colors.deepPurple,
                borderRadius: BorderRadius.circular(8)
                ),
              ) 
              )
              
              // ElevatedButton(onPressed: () {
              //   Navigator.pushNamed(context,MyRoutes.homeRoute);
              // },
              //  child: Text("Submit"),style: TextButton.styleFrom())  
            ]
          ),)]
        
          
            )
          
          
          
          
      )
        ,)
      
     
    );
  }
}
