import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Container(height: MediaQuery.of(context).size.height/7,),
        
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width*0.6,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.check_circle_outline, size: 60, color: Colors.green,),
                  SizedBox(height: 10,),
                  Text("Successful!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  
                  Flexible(
                    child: Text(
                      "you have successfully registred in our app and start working in it"
                      ,textAlign: TextAlign.center,)
                    )
                ],
              ),
            ),
        
            SizedBox(height: MediaQuery.of(context).size.height/3,),
        
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
                  child: Text("Start Shopping", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15.0),
                    backgroundColor: Colors.black,
                  )
                ),
            )
          ],
        ),
      )
    );
  }
}