import 'package:flutter_clean_architecture/domain/model/name_model.dart';
import 'package:flutter_clean_architecture/domain/model/result.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';
import 'package:flutter_clean_architecture/domain/usecase/common/common_test_usecase.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_animals_usecase.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_fruits_usecase.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_name_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'test_state.dart';

final testProvider = StateNotifierProvider<TestNotifier, TestState>(
  (ref) => TestNotifier(ref.read(commonTestUsecaseProvider)),
);

class TestNotifier extends StateNotifier<TestState> {
  final CommonTestUsecase _usecase;

  TestNotifier(this._usecase) : super(TestState());

  /// 과일 정보를 불러오는 메서드(presentation layer)
  void getFruits() async {
    state = state.copyWith(status: 'loading');

    await Future.delayed(const Duration(seconds: 1));

    final response = (await _usecase.execute(
      usecase: GetFruitsUsecase(),
    )) as Result<ViewModuleModel>;

    response.when(
      success: (data) {
        state = state.copyWith(
          status: 'success',
          fruitData: data,
        );
      },
      failure: (message) {
        state = state.copyWith(
          status: 'failure',
          message: message,
        );
      },
    );
  }

  /// 동물 정보를 불러오는 메서드(presentation layer)
  void getAnimals() async {
    state = state.copyWith(status: 'loading');

    await Future.delayed(const Duration(seconds: 1));

    final response = (await _usecase.execute(
      usecase: GetAnimalsUsecase(),
    )) as Result<ViewModuleModel>;

    response.when(
      success: (data) {
        state = state.copyWith(
          status: 'success',
          animalData: data,
        );
      },
      failure: (message) {
        state = state.copyWith(
          status: 'failure',
          message: message,
        );
      },
    );
  }

  /// 이름만 호출하는 메서드(presentation layer)
  void getNames() async {
    state = state.copyWith(status: 'loading');

    await Future.delayed(const Duration(seconds: 1));

    final response = (await _usecase.execute(
      usecase: GetNameUsecase(),
    )) as Result<List<NameModel>>;

    response.when(
      success: (data) {
        state = state.copyWith(
          status: 'success',
          nameDataList: data,
        );
      },
      failure: (message) {
        state = state.copyWith(
          status: 'failure',
          message: message,
        );
      },
    );
  }
}
