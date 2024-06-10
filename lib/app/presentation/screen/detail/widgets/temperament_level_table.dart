import 'package:flutter/material.dart';
import 'package:purr_pedia_app/app/presentation/screen/detail/widgets/widgets.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';
import 'package:purr_pedia_app/core/utils/models/item_temperament.dart';

class TemperamentLevelTable extends StatelessWidget {
  const TemperamentLevelTable({
    super.key,
    this.temperament,
    this.heightBoxLevel,
    required this.widthBoxLevel,
  });

  final List<ItemTemperament>? temperament;
  final double? heightBoxLevel;
  final double widthBoxLevel;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: List<TableRow>.generate(
        temperament?.length ?? 0,
        (i) => TableRow(children: [
          Text(
            temperament?[i].label ?? '',
            style: const TextStyle(
              fontFamily: FontFamilyToken.montserrat,
              fontWeight: FontWeight.bold,
              color: ColorsToken.white,
              fontSize: 14,
            ),
          ),
          BoxLevelTable(
              value: temperament?[i].value ?? 0,
              height: heightBoxLevel,
              width: widthBoxLevel)
        ]),
      ),
    );
  }
}
