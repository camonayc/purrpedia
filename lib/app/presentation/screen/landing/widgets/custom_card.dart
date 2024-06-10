import 'package:flutter/material.dart';
import 'package:purr_pedia_app/app/domain/models/breed_card.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';
import 'package:purr_pedia_app/core/utils/functions/text_format.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.padding,
    this.margin,
    this.spaceBetween,
    this.onDetail,
    this.image,
    required this.breed,
  });

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? spaceBetween;
  final void Function()? onDetail;
  final Widget? image;
  final BreedCard breed;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            color: ColorsToken.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 10),
                  color: Colors.black45)
            ]),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${breed.name}',
                    style: const TextStyle(
                        fontFamily: FontFamilyToken.montserrat,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  InkWell(
                      onTap: onDetail, child: AssetsToken.icons.details.svg())
                ],
              ),
              SizedBox(
                height: spaceBetween,
              ),
              Container(
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip.hardEdge,
                child: image ??
                    Image.asset(
                      AssetsToken.images.loadingPhoto.path,
                      fit: BoxFit.fill,
                    ),
              ),
              SizedBox(
                height: spaceBetween,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '${breed.origin}',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontFamily: FontFamilyToken.montserrat,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      TextFormat.getFirstQuality('${breed.temperament}'),
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontFamily: FontFamilyToken.montserrat,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
