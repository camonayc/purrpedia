import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class FeatureText extends StatelessWidget {
  const FeatureText({
    super.key,
    required this.label,
    this.text,
    this.padding,
  });

  final String label;
  final String? text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: '$label:  ',
          style: const TextStyle(
            fontFamily: FontFamilyToken.montserrat,
            fontWeight: FontWeight.bold,
            color: ColorsToken.white,
            fontSize: 16,
          ),
          children: [
            TextSpan(
              text: text ?? 'Whitout information',
              style: const TextStyle(
                fontFamily: FontFamilyToken.montserrat,
                fontWeight: FontWeight.normal,
                color: ColorsToken.white,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
