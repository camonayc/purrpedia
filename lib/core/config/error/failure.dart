import 'package:equatable/equatable.dart'; // dart pub add equatable

abstract class Failure extends Equatable {
  String? get message;

  @override
  List<Object?> get props => <Object?>[message];
}
