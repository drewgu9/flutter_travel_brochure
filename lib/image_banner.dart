import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double height;

  ImageBanner({required this.assetPath, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: height),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(assetPath, fit: BoxFit.cover),
    );
  }
}
