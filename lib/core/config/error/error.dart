import 'package:purr_pedia_app/core/config/error/data_missing_exception.dart';
import 'package:purr_pedia_app/core/config/error/failure.dart';
import 'package:purr_pedia_app/core/service/logger_service.dart';

class ErrorFailure extends Failure {
  ErrorFailure._({
    this.error,
    this.message,
  });
  factory ErrorFailure.decode(
    Error? error,
  ) {
    LoggerService.error(error.toString(), name: 'FAILURE[ERROR]');
    LoggerService.error((error?.stackTrace).toString(),
        name: 'FAILURE[ERROR][TRACE]');
    return ErrorFailure._(
      error: error,
      message: error.toString(),
    );
  }
  final Error? error;
  @override
  final String? message;
}

class DataMissingFailure extends Failure {
  factory DataMissingFailure.decode(DataMissingException? error) {
    LoggerService.error(error.toString(), name: 'FAILURE[DATAMISSING]');
    return DataMissingFailure._(
      error: error,
      message: error?.message,
    );
  }
  DataMissingFailure._({
    this.error,
    this.message,
  });
  final DataMissingException? error;
  @override
  final String? message;
}
