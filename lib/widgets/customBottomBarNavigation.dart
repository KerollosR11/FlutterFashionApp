import 'package:flutter/material.dart';

class CustomBottomBarNavigation extends StatefulWidget {
  const CustomBottomBarNavigation({super.key});

  @override
  State<CustomBottomBarNavigation> createState() => _CustomBottomBarNavigationState();
}

class _CustomBottomBarNavigationState extends State<CustomBottomBarNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(2.0, 0),
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 238, 237, 236),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          padding: EdgeInsets.fromLTRB(35, 5, 10, 5),
                          child: Text("Home", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.home_filled, color: Colors.white,)
                        ),
                        
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(3.5),
                    child: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.black,
                    )
                  ),

                  Container(
                    padding: EdgeInsets.all(3.5),
                    child: Icon(
                      Icons.notifications_rounded,
                      color: Colors.black,
                    )
                  ),

                  Container(
                    padding: EdgeInsets.all(3.5),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black,
                    )
                  ),
                ],
              ),
              
            );
  }
}