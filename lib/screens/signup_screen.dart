import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/successful_screen.dart';
import 'package:flutter_application_1/widgets/custom_signup_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool? _isChecked = false;


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

              SizedBox(height: 20,),
        
              Container(
                
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Sign Up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Create an new account")
                  ],
                ),
              ),
        
              Container(
                child: Column(
                  children: <Widget>[
                    CustomSignupInput(label: "User Name", scure: false, hint: "username", icon: Icons.check_circle_rounded,),
                    SizedBox(height: 10),
                    CustomSignupInput(label: "Email", scure: false, hint: "example@email.com",),
                    SizedBox(height: 10),
                    CustomSignupInput(label: "Password", scure: true, icon: Icons.visibility_off,),
                    SizedBox(height: 10),
                    CustomSignupInput(label: "Confirm Password", scure: true, icon: Icons.visibility_off),
                  ],
                )
              ),

              Container(
                
                child: Row(
                  children: <Widget>[
                    Checkbox(value: _isChecked, onChanged: (bool? value){
                      setState(() {
                        _isChecked = value;
                      });
                
                    }),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "By creation an account you have to agree with our terms and condition",
                        ),
                      ),
                    ),  
                  ],
                ),
              ),
        
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context,
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  SuccessfulScreen(),
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
              
              

              
              
            ]
          ) 
        ),
      ),
    );
  }
}