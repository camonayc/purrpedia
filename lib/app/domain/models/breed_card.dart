import 'package:equatable/equatable.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';

class BreedCard extends Equatable {
  final String? id;
  final String? name;
  final String? temperament;
  final String? origin;
  final String? referenceImageId;

  const BreedCard({
    this.id,
    this.name,
    this.temperament,
    this.origin,
    this.referenceImageId,
  });

  BreedCard copyWith({
    String? id,
    String? name,
    String? temperament,
    String? origin,
    String? referenceImageId,
  }) =>
      BreedCard(
        id: id ?? this.id,
        name: name ?? this.name,
        temperament: temperament ?? this.temperament,
        origin: origin ?? this.origin,
        referenceImageId: referenceImageId ?? this.referenceImageId,
      );

  static BreedCard fromBreed(Breed breed) => BreedCard(
      id: breed.id ?? '',
      name: breed.name ?? '',
      origin: breed.origin ?? '',
      temperament: breed.temperament ?? '',
      referenceImageId: breed.referenceImageId ?? '');

  static BreedCard fromMap(Map<String, dynamic> json) => BreedCard(
        id: json["id"],
        name: json["name"],
        temperament: json["temperament"],
        origin: json["origin"],
        referenceImageId: json["reference_image_id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "temperament": temperament,
        "origin": origin,
        "reference_image_id": referenceImageId,
      };

  static List<BreedCard> mapFormListBreed(List<Breed> listBreed) => listBreed
      .map(
        (e) => BreedCard.fromBreed(e),
      )
      .toList();

  @override
  List<Object?> get props => [
        id,
        name,
        temperament,
        origin,
        referenceImageId,
      ];
}
