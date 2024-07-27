import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/pics/pics.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(logoBg));
  }
}