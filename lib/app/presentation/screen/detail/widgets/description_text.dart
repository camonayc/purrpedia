import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
    required this.description,
    this.padding,
  });

  final String description;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontFamily: FontFamilyToken.montserrat,
          fontWeight: FontWeight.normal,
          color: ColorsToken.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
