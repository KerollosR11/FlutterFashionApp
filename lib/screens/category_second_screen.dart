import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/categories_data.dart';
// import 'package:flutter_application_1/widgets/category_container.dart';
import 'package:flutter_application_1/widgets/customBottomBarNavigation.dart';
// import 'package:flutter_application_1/widgets/custom_login_button.dart';

class CategorySecondScreen extends StatefulWidget {
  const CategorySecondScreen({super.key});

  @override
  State<CategorySecondScreen> createState() => _CategorySecondScreenState();
}

class _CategorySecondScreenState extends State<CategorySecondScreen> {
  @override
  Widget build(BuildContext context) {
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
        
      ),
      body: Column(
        children: [
          Expanded(
            flex:8,
            child :Container(
              padding: EdgeInsets.all(8.0),
              
              child: Column(
                children: [
                  Expanded(
                    flex:2,
                    child:Padding(
                      padding:  EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField( 
                        decoration: InputDecoration(
                            hintText: 'Search',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)
                            ),
                            labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20,
                            )
                          )
                      ),
                    )
                  ),

                  Expanded(
                    flex:13, 
                    child:Container(
                      padding: EdgeInsets.all(8),
                      child: Wrap(
                        children: [
                          for(int i =0; i<data1.length; i++)
                          Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                                width: MediaQuery.of(context).size.width*0.4,
                                height: 165,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(data1[i]["catImage"]), fit: BoxFit.cover),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)
                                  
                                ),
                                
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                                    height: 60,
                                    width: MediaQuery.of(context).size.width*0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)
                                      )
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(data1[i]["catName"], style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                                        Text("${data1[i]["numOfProducts"]} products", style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ) ,
                  ),
                ]
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