import 'dart:convert';

class Category {
  String id;
  String iconPath;
  String title;
  Category({
    required this.id,
    required this.iconPath,
    required this.title,
  });

  Category copyWith({
    String? id,
    String? iconPath,
    String? title,
  }) {
    return Category(
      id: id ?? this.id,
      iconPath: iconPath ?? this.iconPath,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'iconPath': iconPath});
    result.addAll({'title': title});

    return result;
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] ?? '',
      iconPath: map['iconPath'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() => 'Category(id: $id, iconPath: $iconPath, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.iconPath == iconPath &&
        other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ iconPath.hashCode ^ title.hashCode;
}
