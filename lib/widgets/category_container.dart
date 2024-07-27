import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final dynamic catName;
  final dynamic numofProd;
  final dynamic catIcon;
  const CategoryContainer({super.key ,required this.catName, required this.numofProd , required this.catIcon});

  @override
  Widget build(BuildContext context) {
    return Container(    //the category container
                    margin: EdgeInsets.only(bottom: 10),
                    height: 70,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(catIcon, color: Colors.white,),
                          SizedBox(width: 10),
                          Text(catName, style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                        ),
                        Text("${numofProd} products" ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  );
  }
}