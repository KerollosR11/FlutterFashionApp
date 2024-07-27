import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:flutter_application_1/widgets/logo_image.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.red,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/landBg.jpg"), fit:BoxFit.cover),
            // color: Colors.black.withOpacity(0.6)
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.red,
          decoration: BoxDecoration(
            
             color: Colors.black.withOpacity(0.5)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 50,),
              LogoImage(),
              
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context,
                            MaterialPageRoute<void>(
                            builder: (BuildContext context) =>  LoginScreen(),
                          ),
                          );
                        },
                        child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15.0),
                          backgroundColor: Colors.white,
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context,
                            MaterialPageRoute<void>(
                            builder: (BuildContext context) =>  SignUpScreen(),
                          ),
                          );
                        },
                        child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20)),

                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 3,
                            color: Colors.white
                          ),
                          
                          padding: EdgeInsets.all(15.0),
                          // backgroundColor: Colors.transparent,
                        )
                      ),
                    ),       
                  ],

                ),
              )

              
            ]
          ),
        ),

        ],
        
      )
    );
  }
}