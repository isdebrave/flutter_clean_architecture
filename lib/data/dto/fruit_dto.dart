/// 과일 모델(data layer)
class FruitDto {
  /// 이름
  final String name;

  /// 종류
  final String sort;

  /// 이미지
  final String imageUrl;

  /// 과일 모델(data layer)
  const FruitDto({
    this.name = '',
    this.sort = '',
    this.imageUrl = '',
  });

  /// `Map -> FruitDto`로 변환하는 함수
  factory FruitDto.fromJson(Map<String, dynamic> json) {
    return FruitDto(
      name: json['name'] ?? '',
      sort: json['sort'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
