import 'package:dio/dio.dart';
import 'package:purr_pedia_app/app/data/entitys/images.dart';
import 'package:purr_pedia_app/app/domain/data_source/image_data_source.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';
import 'package:purr_pedia_app/core/config/env/environments.dart';
import 'package:purr_pedia_app/core/config/error/error.dart';
import 'package:purr_pedia_app/core/config/error/exception.dart';

class ImageDataSourceImpl extends ImageDataSource {
  ImageDataSourceImpl(this.client);
  final ApiClient client;

  @override
  Future<ImageResponse> getImageById(String imageId) async {
    try {
      final response = await client
          .get<dynamic>('${Environment.config.apiBaseURL.images}/$imageId');
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return ImageResponse.fromMap(response.data);
      } else {
        throw Exception('Error getting departments');
      }
    } on DioException catch (error) {
      throw DioFailure.decode(error);
    } on Error catch (error) {
      throw ErrorFailure.decode(error);
    } on Exception catch (error) {
      throw ExceptionFailure.decode(error);
    }
  }
}
