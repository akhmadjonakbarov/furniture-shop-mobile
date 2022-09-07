import 'dart:convert';

class Promotion {
  String backgroundImagePath;
  bool reverseGradient;
  String title;
  String subtitle;
  String tag;
  String imagePath;
  Promotion({
    required this.backgroundImagePath,
    required this.reverseGradient,
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.imagePath,
  });

  Promotion copyWith({
    String? backgroundImagePath,
    bool? reverseGradient,
    String? title,
    String? subtitle,
    String? tag,
    String? imagePath,
  }) {
    return Promotion(
      backgroundImagePath: backgroundImagePath ?? this.backgroundImagePath,
      reverseGradient: reverseGradient ?? this.reverseGradient,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      tag: tag ?? this.tag,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'backgroundImagePath': backgroundImagePath});
    result.addAll({'reverseGradient': reverseGradient});
    result.addAll({'title': title});
    result.addAll({'subtitle': subtitle});
    result.addAll({'tag': tag});
    result.addAll({'imagePath': imagePath});

    return result;
  }

  factory Promotion.fromMap(Map<String, dynamic> map) {
    return Promotion(
      backgroundImagePath: map['backgroundImagePath'] ?? '',
      reverseGradient: map['reverseGradient'] ?? false,
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      tag: map['tag'] ?? '',
      imagePath: map['imagePath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Promotion.fromJson(String source) =>
      Promotion.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Promotion(backgroundImagePath: $backgroundImagePath, reverseGradient: $reverseGradient, title: $title, subtitle: $subtitle, tag: $tag, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Promotion &&
        other.backgroundImagePath == backgroundImagePath &&
        other.reverseGradient == reverseGradient &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.tag == tag &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    return backgroundImagePath.hashCode ^
        reverseGradient.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        tag.hashCode ^
        imagePath.hashCode;
  }
}
