import 'package:equatable/equatable.dart';

class ItemTemperament extends Equatable {
  const ItemTemperament({required this.label, required this.value});

  final String label;
  final int value;

  static ItemTemperament fromMap(Map<String, dynamic> json) {
    return ItemTemperament(
      label: json['label'] as String,
      value: json['value'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'text': value,
    };
  }

  ItemTemperament copyWith({
    String? label,
    int? value,
  }) {
    return ItemTemperament(
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [label, value];
}
