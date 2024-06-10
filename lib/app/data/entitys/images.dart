import 'package:equatable/equatable.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';

class ImageResponse extends Equatable {
  final String? id;
  final String? url;

  const ImageResponse({
    this.id,
    this.url,
  });

  ImageResponse copyWith({
    String? id,
    String? url,
    List<Breed>? breeds,
    int? width,
    int? height,
  }) =>
      ImageResponse(
        id: id ?? this.id,
        url: url ?? this.url,
      );

  static ImageResponse fromMap(Map<String, dynamic> json) => ImageResponse(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "url": url,
      };

  @override
  List<Object?> get props => [id, url, 
  ];
}
