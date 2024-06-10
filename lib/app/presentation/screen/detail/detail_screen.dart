import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purr_pedia_app/app/presentation/screen/detail/provider/providers.dart';
import 'package:purr_pedia_app/app/presentation/screen/detail/widgets/widgets.dart';
import 'package:purr_pedia_app/app/presentation/widgets/error_image_box.dart';
import 'package:purr_pedia_app/app/presentation/widgets/loading_image_box.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';
import 'package:purr_pedia_app/core/utils/models/models.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({
    super.key,
    required this.breedId,
  });
  final String breedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final breedDetail = ref.watch(getDetailBreedProvider(breedId));
    return breedDetail.when(
      data: (data) {
        final imageDetail =
            ref.watch(loadImageDetailProvider(data.imageId ?? ''));

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            title: (data.name ?? '').toUpperCase(),
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
            child: Column(
              children: [
                imageDetail.when(
                  data: (data) => ImageDetailBox(
                    size: size,
                    imageUrl: data,
                  ),
                  error: (error, stackTrace) => ErrorImageBox(
                    height: size.height / 3,
                    width: size.width,
                  ),
                  loading: () => LoadingImageBox(
                    height: size.height / 3,
                    width: size.width,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Container(
                      width: size.width,
                      padding: EdgeInsets.only(bottom: size.height * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DescriptionText(
                            description:
                                data.description ?? 'Whitout description',
                            padding:
                                EdgeInsets.only(bottom: size.height * 0.0125),
                          ),
                          ...List<Widget>.generate(
                            data.feature?.length ?? 0,
                            (i) {
                              final FeatureTextItem? feature = data.feature?[i];
                              if (feature == null) {
                                return Container();
                              }
                              return FeatureText(
                                label: feature.label,
                                text: feature.text,
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.0125),
                              );
                            },
                          ),
                          TemperamentLevelTable(
                            temperament: data.temperament,
                            heightBoxLevel: size.height * 0.018,
                            widthBoxLevel: size.width * 0.08,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          ...List<Widget>.generate(
                            data.featurePhysics?.length ?? 0,
                            (i) {
                              final FeatureTextItem? feature = data.featurePhysics?[i];
                              if (feature == null) {
                                return Container();
                              }
                              return FeatureText(
                                label: feature.label,
                                text: feature.text,
                                padding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.0125),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => ErrorDetail(size: size),
      loading: () => LoadingDetail(size: size),
    );
  }
}


