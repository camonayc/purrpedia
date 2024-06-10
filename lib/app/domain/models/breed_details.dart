import 'package:equatable/equatable.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/core/utils/models/models.dart';

class BreedDetail extends Equatable {
  const BreedDetail({
    this.name,
    this.description,
    this.imageId,
    this.feature,
    this.temperament,
    this.featurePhysics,
  });
  final String? name;
  final String? description;
  final String? imageId;
  final List<FeatureTextItem>? feature;
  final List<ItemTemperament>? temperament;
  final List<FeatureTextItem>? featurePhysics;

  static BreedDetail fromBreed(Breed breed) => BreedDetail(
        name: breed.name,
        description: breed.description,
        imageId: breed.referenceImageId ?? '',
        feature: [
          FeatureTextItem(
            label: 'Origin',
            text: breed.origin ?? '',
          ),
          FeatureTextItem(
            label: 'Life Span',
            text: '${breed.lifeSpan ?? ''} years',
          ),
          FeatureTextItem(
            label: 'Weight',
            text:
                '${breed.weight?.imperial ?? ''} lbs /  ${breed.weight?.metric ?? ''} Kg',
          ),
          FeatureTextItem(
              label: 'Hypoallergenic',
              text: breed.hypoallergenic == 0 ? 'No' : 'Yes'),
          FeatureTextItem(
            label: 'Temperament',
            text: breed.temperament ?? '',
          ),
        ],
        temperament: [
          ItemTemperament(
              label: 'Adaptability', value: breed.adaptability ?? 0),
          ItemTemperament(
              label: 'Affection level', value: breed.affectionLevel ?? 0),
          ItemTemperament(
              label: 'Child friendly', value: breed.childFriendly ?? 0),
          ItemTemperament(label: 'Dog friendly', value: breed.dogFriendly ?? 0),
          ItemTemperament(label: 'Energy level', value: breed.energyLevel ?? 0),
          ItemTemperament(label: 'Grooming', value: breed.grooming ?? 0),
          ItemTemperament(
              label: 'Health issues', value: breed.healthIssues ?? 0),
          ItemTemperament(
              label: 'Intelligence', value: breed.intelligence ?? 0),
          ItemTemperament(
              label: 'Shedding level', value: breed.sheddingLevel ?? 0),
          ItemTemperament(label: 'Social needs', value: breed.socialNeeds ?? 0),
          ItemTemperament(
              label: 'Stranger friendly', value: breed.strangerFriendly ?? 0),
          ItemTemperament(
              label: 'Vocalisation', value: breed.vocalisation ?? 0),
        ],
        featurePhysics: [
          FeatureTextItem(
            label: 'Experimental',
            text: breed.experimental == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Hairless',
            text: breed.hairless == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Natural',
            text: breed.natural == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Rare',
            text: breed.rare == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Rex',
            text: breed.rex == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Suppressed tail',
            text: breed.suppressedTail == 0 ? 'No' : 'Yes',
          ),
          FeatureTextItem(
            label: 'Short legs',
            text: breed.shortLegs == 0 ? 'No' : 'Yes',
          ),
        ],
      );

  @override
  List<Object?> get props => [
        name,
        description,
        feature,
        imageId,
        temperament,
        featurePhysics,
      ];
}
