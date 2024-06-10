import 'package:equatable/equatable.dart';

class Weight extends Equatable {
  final String? imperial;
  final String? metric;

  const Weight({
    this.imperial,
    this.metric,
  });

  Weight copyWith({
    String? imperial,
    String? metric,
  }) =>
      Weight(
        imperial: imperial ?? this.imperial,
        metric: metric ?? this.metric,
      );

  static Weight fromMap(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toMap() => {
        "imperial": imperial,
        "metric": metric,
      };

  @override
  List<Object?> get props => [imperial, metric];
}
