import 'package:flutter_clean_architecture/data/data_source/mock/test_mock_data.dart';
import 'package:flutter_clean_architecture/data/data_source/remote/common/common_test_api.dart';
import 'package:flutter_clean_architecture/data/dto/animal_dto.dart';
import 'package:flutter_clean_architecture/data/dto/fruit_dto.dart';
import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';

class TestMockApi extends CommonTestApi {
  @override
  Future<ResponseWrapper<FruitDto>> getFruits() {
    return Future(
      () => ResponseWrapper(
        status: 'success',
        code: 200,
        data: _fruitParser(TestMockData.fruits),
      ),
    );
  }

  @override
  Future<ResponseWrapper<AnimalDto>> getAnimals() {
    return Future(
      () => ResponseWrapper(
        status: 'success',
        code: 200,
        data: _animalParser(TestMockData.animals),
      ),
    );
  }

  /// fruit mock data를 parsing하는 함수
  FruitDto _fruitParser(Map<String, dynamic> json) {
    return FruitDto.fromJson(json);
  }

  /// animal mock data를 parsing하는 함수
  AnimalDto _animalParser(Map<String, dynamic> json) {
    return AnimalDto.fromJson(json);
  }
}
