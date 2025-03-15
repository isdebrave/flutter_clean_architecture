part of 'test_provider.dart';

class TestState {
  /// 상태(initial, loading, success, failure)
  final String status;

  /// 과일 데이터(presentation)
  final ViewModuleModel fruitData;

  /// 동물 데이터(presentation)
  final ViewModuleModel animalData;

  /// 이름 데이터(presentation)
  final List<NameModel> nameDataList;

  /// 에러 메시지
  final String message;

  TestState({
    this.status = 'initial',
    ViewModuleModel? fruitData,
    ViewModuleModel? animalData,
    this.nameDataList = const <NameModel>[],
    this.message = '',
  })  : fruitData = fruitData ??
            const ViewModuleModel(
              name: '',
              imageUrl: '',
            ),
        animalData = animalData ??
            const ViewModuleModel(
              name: '',
              imageUrl: '',
            );

  /// 새로운 TestState를 반환하는 함수 <br />
  /// [status]: 상태(initial, loading, success, failure) <br />
  /// [fruitData]: 과일 데이터(presentation) <br />
  /// [animalModel]: 동물 데이터(presentation) <br />
  /// [message]: 에러 메시지
  TestState copyWith({
    String? status,
    ViewModuleModel? fruitData,
    ViewModuleModel? animalData,
    List<NameModel>? nameDataList,
    String? message,
  }) {
    return TestState(
      status: status ?? this.status,
      fruitData: fruitData ?? this.fruitData,
      animalData: animalData ?? this.animalData,
      nameDataList: nameDataList ?? this.nameDataList,
      message: message ?? this.message,
    );
  }
}
