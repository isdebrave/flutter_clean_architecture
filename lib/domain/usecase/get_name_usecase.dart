import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';
import 'package:flutter_clean_architecture/domain/model/animal_model.dart';
import 'package:flutter_clean_architecture/domain/model/fruit_model.dart';
import 'package:flutter_clean_architecture/domain/model/name_model.dart';
import 'package:flutter_clean_architecture/domain/model/result.dart';
import 'package:flutter_clean_architecture/domain/repository/test_repository.dart';
import 'package:flutter_clean_architecture/domain/usecase/base/usecase.dart';

class GetNameUsecase extends Usecase<TestRepository> {
  @override
  Future<Result<List<NameModel>>> call(TestRepository repository) async {
    final list = await Future.wait([
      repository.getFruits(),
      repository.getAnimals(),
    ]);

    final fruit = list[0] as ResponseWrapper<FruitModel>;
    final animal = list[1] as ResponseWrapper<AnimalModel>;

    if (fruit.data == null) {
      return Result.failure(message: '과일 데이터가 null입니다.');
    } else if (animal.data == null) {
      return Result.failure(message: '동물 데이터가 null입니다.');
    }

    final nameList = [
      NameModel(name: fruit.data!.name),
      NameModel(name: animal.data!.name),
    ];

    return fruit.status == 'success' && animal.status == 'success'
        ? Result.success(data: nameList)
        : Result.failure(message: '이름 데이터가 없습니다.');
  }
}
