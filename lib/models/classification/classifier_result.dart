class ClassifierResult {
  final double confidence;
  final int index;
  final String label;
  ClassifierResult({this.confidence, this.index, this.label});

  ClassifierResult copyWith({
    double confidence,
    int index,
    String label,
  }) {
    return ClassifierResult(
      confidence: confidence ?? this.confidence,
      index: index ?? this.index,
      label: label ?? this.label,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ClassifierResult &&
        other.confidence == confidence &&
        other.index == index &&
        other.label == label;
  }

  @override
  int get hashCode => confidence.hashCode ^ index.hashCode ^ label.hashCode;

  @override
  String toString() =>
      'ClassifierResult(confidence: $confidence, index: $index, label: $label)';
}
