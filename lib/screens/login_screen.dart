import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
// import 'package:flutter_application_1/screens/successful_screen.dart';
import 'package:flutter_application_1/widgets/custom_login_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        
              Image(image: AssetImage('images/logo3.png')),
        
              Container(
                // color: Colors.amber,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Welcome!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("please login or sign up to continue our app")
                  ],
                ),
              ),
        
              Container(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "example@email.com",
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(color:Colors.black, fontWeight: FontWeight.bold),
                        floatingLabelStyle: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.check_circle)
                      )
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(color:Colors.black, fontWeight: FontWeight.bold),
                        floatingLabelStyle: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.check_circle)
                      )
                    ),
                  ],
                )
              ),
        
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  CategoryScreen(),
                    ),
                    );
                  },
                  child: Text("login", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15.0),
                    backgroundColor: Colors.black,
                  
                  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width*0.4,
                    color: Color.fromARGB(255, 192, 192, 192),
                  ),
                  Text("Or", style: TextStyle(fontSize: 19.0)),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width*0.4,
                    color: Color.fromARGB(255, 192, 192, 192),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.facebook_rounded, color: Colors.white,),
                        SizedBox(width: 10),
                        Text("Continue with Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12.0),
                      backgroundColor: const Color.fromARGB(255, 17, 68, 110),
                    )
                  ),
        
                  SizedBox(height: 10,),

                  CustomLoginButton(iconLogin: Icons.account_circle_rounded, textLogin: 'Google',),
        
                  SizedBox(height: 10),
        
                  CustomLoginButton(iconLogin: Icons.apple, textLogin: 'Apple',),
        
                ],
              )
              
            ]
          ) 
        ),
      )
    );
  }
}