import 'package:dio/dio.dart';
import 'package:purr_pedia_app/app/data/entitys/breed.dart';
import 'package:purr_pedia_app/app/domain/data_source/breeds_data_source.dart';
import 'package:purr_pedia_app/core/config/client/api_client.dart';
import 'package:purr_pedia_app/core/config/env/environments.dart';
import 'package:purr_pedia_app/core/config/error/error.dart';
import 'package:purr_pedia_app/core/config/error/exception.dart';

class BreedsDataSourceImpl extends BreedsDataSource {
  BreedsDataSourceImpl(this.client);
  final ApiClient client;

  @override
  Future<List<Breed>> getBreedsByPage(int page) async {
    try {
      final response = await client.get<dynamic>(
          Environment.config.apiBaseURL.breeds,
          queryParameters: {'limit': 100, 'page': page});
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return (response.data as List<dynamic>)
            .map(
              (e) => Breed.fromMap(e),
            )
            .toList();
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

  @override
  Future<Breed> getBreedById(String id) async {
    try {
      final response = await client
          .get<dynamic>('${Environment.config.apiBaseURL.breeds}/$id');
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return Breed.fromMap(response.data);
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
