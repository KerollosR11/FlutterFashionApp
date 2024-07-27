import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/data/categories_data.dart';
import 'package:flutter_application_1/screens/category_second_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/widgets/category_container.dart';
import 'package:flutter_application_1/widgets/customBottomBarNavigation.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  
  @override
  Widget build(BuildContext context) {
    // print("legth of data is ${data1.length}");
    return Scaffold(

      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: 15,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(Icons.arrow_back_rounded, color: Colors.white,)
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                      MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  CategorySecondScreen(),
                    ),
                    );
              },
              child: Icon(Icons.search)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex:8,
            child :Container(
              // color: Colors.blue,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Text("Categories",style:TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    textAlign: TextAlign.left, ),
                  ),
                  SizedBox(height: 10,),

                  for(int i=0; i<data1.length; i++ ) // repeating the category container
                  CategoryContainer(
                    catName: data1[i]["catName"],
                    numofProd: data1[i]["numOfProducts"],
                    catIcon: data1[i]["catIcon"],
                  ),
                ],
              ),
            )
          ),

          Expanded(
            flex:1,
            child: CustomBottomBarNavigation()
          )
        ],
      ),
      
    );
  }
}