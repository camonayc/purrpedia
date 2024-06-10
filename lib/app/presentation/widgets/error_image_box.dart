import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class ErrorImageBox extends StatelessWidget {
  const ErrorImageBox({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorsToken.white)),
      child: const Center(
        child: Text(
          'No Image',
          style: TextStyle(
            fontFamily: FontFamilyToken.montserrat,
            fontWeight: FontWeight.bold,
            color: ColorsToken.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
