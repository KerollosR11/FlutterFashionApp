import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final IconData iconLogin;
  final String textLogin;

  const CustomLoginButton({
    super.key,
    required this.iconLogin,
    required this.textLogin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(12),
          ),
          onPressed: () {},
          icon: Icon(
            iconLogin,
            color: Colors.black,
          ),
          label: Text(
            "Continue with $textLogin",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          )),
    );
  }
}