/// UI를 그릴 때, 사용하는 모델(domain layer)
class ViewModuleModel {
  /// 이름
  final String name;

  /// 이미지 경로
  final String imageUrl;

  /// UI를 그릴 때, 사용하는 모델(domain layer)
  const ViewModuleModel({
    required this.name,
    required this.imageUrl,
  });

  /// `Map -> ViewModuleModel`로 변환하는 함수
  factory ViewModuleModel.fromJson(Map<String, dynamic> json) {
    return ViewModuleModel(
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
