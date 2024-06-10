import 'package:flutter/material.dart';
import 'package:purr_pedia_app/app/presentation/widgets/widgets.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class ImageDetailBox extends StatelessWidget {
  const ImageDetailBox({
    super.key,
    required this.size,
    this.imageUrl,
  });

  final Size size;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          border:
              imageUrl == null ? Border.all(color: ColorsToken.white) : null,
          borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.hardEdge,
      child: imageUrl != null
          ? Image.network(
              imageUrl ?? '',
              fit: BoxFit.contain,
              frameBuilder: (BuildContext context, Widget child, int? frame,
                  bool wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded || frame != null) {
                  return child;
                } else {
                  return LoadingImageBox(
                    height: size.height / 3,
                    width: size.width,
                  );
                }
              },
              errorBuilder:
                  (BuildContext context, Object error, StackTrace? stackTrace) {
                return ErrorImageBox(
                  height: size.height / 3,
                  width: size.width,
                );
              },
            )
          : Image.asset(
              AssetsToken.images.loadingPhoto.path,
              fit: BoxFit.fill,
            ),
    );
  }
}
