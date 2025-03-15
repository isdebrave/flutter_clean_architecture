import 'package:flutter_clean_architecture/data/dto/animal_dto.dart';
import 'package:flutter_clean_architecture/data/dto/fruit_dto.dart';
import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';

abstract class CommonTestApi {
  /// 과일 정보를 불러오는 메서드(data layer)
  Future<ResponseWrapper<FruitDto>> getFruits();

  /// 동물 정보를 불러오는 메서드(data layer)
  Future<ResponseWrapper<AnimalDto>> getAnimals();
}
