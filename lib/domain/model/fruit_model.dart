/// 과일 모델(domain layer)
class FruitModel {
  /// 이름
  final String name;

  /// 종류
  final String sort;

  /// 이미지
  final String imageUrl;

  /// 과일 모델(domain layer)
  const FruitModel({
    required this.name,
    required this.sort,
    required this.imageUrl,
  });

  /// `FruitModel -> Map`으로 변환하는 메서드
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sort': sort,
      'imageUrl': imageUrl,
    };
  }
}
