import 'package:equatable/equatable.dart';

class FeatureTextItem extends Equatable {
  const FeatureTextItem({required this.label, required this.text});

  final String label;
  final String text;

  static FeatureTextItem fromMap(Map<String, dynamic> json) {
    return FeatureTextItem(
      label: json['label'] as String,
      text: json['text'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'text': text,
    };
  }

  FeatureTextItem copyWith({
    String? label,
    String? text,
  }) {
    return FeatureTextItem(
      label: label ?? this.label,
      text: text ?? this.text,
    );
  }

  @override
  List<Object?> get props => [label, text];
}
