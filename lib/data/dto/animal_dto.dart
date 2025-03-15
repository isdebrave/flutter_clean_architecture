/// 동물 모델(data layer)
class AnimalDto {
  /// 이름
  final String name;

  /// 종류
  final String type;

  /// 나이
  final int age;

  /// 이미지
  final String thumbnail;

  /// 동물 모델(data layer)
  const AnimalDto({
    this.name = '',
    this.type = '',
    this.age = -1,
    this.thumbnail = '',
  });

  /// `Map -> AnimalDto`로 변환하는 함수
  factory AnimalDto.fromJson(Map<String, dynamic> json) {
    return AnimalDto(
      name: json['name'] ?? '',
      type: json['type'] ?? '',
      age: json['age'] ?? -1,
      thumbnail: json['thumbnail'] ?? '',
    );
  }
}
