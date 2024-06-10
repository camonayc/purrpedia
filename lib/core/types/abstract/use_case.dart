import 'package:either_dart/either.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
