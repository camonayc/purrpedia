import 'package:purr_pedia_app/app/data/entitys/breed.dart';

abstract class BreedsDataSource {
  Future<List<Breed>> getBreedsByPage(int page);
  Future<Breed> getBreedById(String id);
}
