import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  final String assetName;
  const ImageCardWidget({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(assetName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
