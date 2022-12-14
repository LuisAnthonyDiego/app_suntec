import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: sDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.width * 0.7,
            width: size.width * 0.7,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
