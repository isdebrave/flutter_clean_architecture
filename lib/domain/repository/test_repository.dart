import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';
import 'package:flutter_clean_architecture/domain/model/animal_model.dart';
import 'package:flutter_clean_architecture/domain/model/fruit_model.dart';
import 'package:flutter_clean_architecture/domain/repository/base/repository.dart';

abstract class TestRepository extends Repository {
  /// 과일 정보를 불러오는 메서드(domain layer)
  Future<ResponseWrapper<FruitModel>> getFruits();

  /// 동물 정보를 불러오는 메서드(domain layer)
  Future<ResponseWrapper<AnimalModel>> getAnimals();
}
