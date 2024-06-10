import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class LoadingImageBox extends StatelessWidget {
  const LoadingImageBox({
    super.key,
    this.height,
    this.width,
    this.colorLoading,
    this.borderColor,
  });

  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? colorLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor ?? ColorsToken.white)),
      child: Center(
        child: CircularProgressIndicator(
          valueColor:
              AlwaysStoppedAnimation<Color>(colorLoading ?? ColorsToken.white),
        ),
      ),
    );
  }
}
