import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purr_pedia_app/app/presentation/screen/landing/provider/providers.dart';
import 'package:purr_pedia_app/app/presentation/screen/landing/widgets/widgets.dart';

import 'package:purr_pedia_app/core/config/design/tokens.dart';

class LandingScreen extends ConsumerWidget {
  LandingScreen({
    super.key,
  });

  final TextEditingController textController = TextEditingController();

  Future<void> fetchData(int page, WidgetRef ref) async {
    await ref.read(getListBreedProvider.notifier).loadNextPage(page);
  }

  AsyncValue<String?> loadImage(String imageId, WidgetRef ref) {
    return ref.watch(loadImageBreedProvider(imageId));
  }

  final FocusNode searchFocus = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final getBreeds = ref.watch(getListBreedProvider);
    final listBreeds = ref.watch(breedListProvider);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(top: size.height * 0.06),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                stops: [0.1, 0.8],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ColorsToken.primary, ColorsToken.secondary]),
          ),
          child: Column(
            children: [
              const Text(
                'PURRPEDIA',
                style: TextStyle(
                    fontFamily: FontFamilyToken.caveat,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: ColorsToken.white),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              CustomTextField(
                textController: textController,
                focusNode: searchFocus,
                height: size.height * 0.0525,
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.15,
                ),
                onChanged: (value) {
                  ref.read(getListBreedProvider.notifier).searchBreeds(value);
                },
                onSearch: (value) {
                  ref.read(getListBreedProvider.notifier).searchBreeds(value);
                },
                onSubmitted: (value) {
                  ref.read(getListBreedProvider.notifier).searchBreeds(value);
                },
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              getBreeds.when(
                data: (data) => Expanded(
                  child: CustomListCard(
                    items: listBreeds,
                    onLoadingImage: (id) => loadImage(id, ref),
                    onDetail: () => searchFocus.unfocus(),
                  ),
                ),
                loading: () => const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(ColorsToken.white),
                      )
                    ],
                  ),
                ),
                error: (error, stackTrace) => Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Error: $error')],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
