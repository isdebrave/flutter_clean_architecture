import 'package:flutter_clean_architecture/data/data_source/remote/test_api.dart';
import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';
import 'package:flutter_clean_architecture/data/data_source/remote/common/common_test_api.dart';
import 'package:flutter_clean_architecture/data/mapper/mapper.dart';
import 'package:flutter_clean_architecture/domain/model/animal_model.dart';
import 'package:flutter_clean_architecture/domain/model/fruit_model.dart';
import 'package:flutter_clean_architecture/domain/repository/test_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testRepositoryImplProvider = Provider<TestRepository>(
  (ref) => TestRepositoryImpl(ref.read(testApiProvider)),
);

class TestRepositoryImpl extends TestRepository {
  final CommonTestApi _api;

  TestRepositoryImpl(this._api);

  @override
  Future<ResponseWrapper<FruitModel>> getFruits() async {
    final response = await _api.getFruits();

    return response.toModel(
      data: response.data?.toModel(),
    );
  }

  @override
  Future<ResponseWrapper<AnimalModel>> getAnimals() async {
    final response = await _api.getAnimals();

    return response.toModel(
      data: response.data?.toModel(),
    );
  }
}
