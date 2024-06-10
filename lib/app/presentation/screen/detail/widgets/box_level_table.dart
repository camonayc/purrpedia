import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class BoxLevelTable extends StatelessWidget {
  const BoxLevelTable({
    super.key,
    this.height,
    required this.width,
    this.value = 0,
  });
  final int value;
  final double? height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        5,
        (i) {
          return Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color:
                    i + 1 <= value ? ColorsToken.gray : ColorsToken.transparent,
                border: Border.all(color: Colors.white)),
          );
        },
      ),
    );
  }
}
