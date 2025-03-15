/// 동물 모델(domain layer)
class AnimalModel {
  /// 이름
  final String name;

  /// 종류
  final String type;

  /// 나이
  final int age;

  /// 이미지
  final String thumbnail;

  /// 동물 모델(domain layer)
  const AnimalModel({
    required this.name,
    required this.type,
    required this.age,
    required this.thumbnail,
  });

  /// `AnimalModel -> Map`으로 변환하는 메서드
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'age': age,
      'thumbnail': thumbnail,
    };
  }
}
