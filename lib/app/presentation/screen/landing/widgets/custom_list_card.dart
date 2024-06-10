import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:purr_pedia_app/app/domain/models/breed_card.dart';
import 'package:purr_pedia_app/app/presentation/screen/landing/widgets/widgets.dart';
import 'package:purr_pedia_app/app/presentation/widgets/widgets.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';
import 'package:purr_pedia_app/core/config/router/routes.name.dart';

class CustomListCard extends StatelessWidget {
  const CustomListCard({
    super.key,
    required this.items,
    this.onLoadingImage,
    this.onDetail,
  });

  final List<BreedCard> items;
  final AsyncValue<String?> Function(String id)? onLoadingImage;
  final void Function()? onDetail;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final breed = items[index];
        final imageId = onLoadingImage?.call(breed.referenceImageId ?? '');

        return CustomCard(
          breed: breed,
          padding: EdgeInsets.fromLTRB(size.width * 0.07, size.height * 0.02,
              size.width * 0.07, size.height * 0.03),
          margin: EdgeInsets.only(
              left: size.width * 0.06,
              right: size.width * 0.06,
              bottom: size.height * 0.035),
          spaceBetween: size.height * 0.015,
          onDetail: () {
            onDetail?.call();
            context.pushNamed(AppScreens.detailScreen,
                pathParameters: {'breedId': breed.id ?? ''});
          },
          image: Container(
            child: imageId?.when(
              data: (data) => data == null
                  ? Image.asset(AssetsToken.images.loadingPhoto.path)
                  : Image.network(
                      data,
                      fit: BoxFit.fill,
                      frameBuilder: (BuildContext context, Widget child,
                          int? frame, bool wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded || frame != null) {
                          return child;
                        } else {
                          return LoadingImageBox(
                            height: size.height / 4,
                            width: size.width,
                            borderColor: ColorsToken.gray,
                            colorLoading: ColorsToken.gray,
                          );
                        }
                      },
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return ErrorImageBox(
                          height: size.height / 4,
                          width: size.width,
                        );
                      },
                    ),
              error: (error, stackTrace) => ErrorImageBox(
                height: size.height / 3,
                width: size.width,
              ),
              loading: () => LoadingImageBox(
                height: size.height / 4,
                width: size.width,
                borderColor: ColorsToken.gray,
                colorLoading: ColorsToken.gray,
              ),
            ),
          ),
        );
      },
    );
  }
}
