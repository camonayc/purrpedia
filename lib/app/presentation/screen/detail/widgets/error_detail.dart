import 'package:flutter/material.dart';
import 'package:purr_pedia_app/app/presentation/screen/detail/widgets/widgets.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class ErrorDetail extends StatelessWidget {
  const ErrorDetail({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(
          title: '',
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(
            top: size.height * 0.11,
            left: size.width * 0.1,
            right: size.width * 0.1,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.1, 0.8],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ColorsToken.primary, ColorsToken.secondary],
            ),
          ),
        ));
  }
}
