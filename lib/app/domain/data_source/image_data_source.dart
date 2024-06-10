import 'package:purr_pedia_app/app/data/entitys/images.dart';

abstract class ImageDataSource {
  Future<ImageResponse> getImageById(String imageId);
}
