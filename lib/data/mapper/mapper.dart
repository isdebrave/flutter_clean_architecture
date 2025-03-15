import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';
import 'package:flutter_clean_architecture/data/dto/animal_dto.dart';
import 'package:flutter_clean_architecture/data/dto/fruit_dto.dart';
import 'package:flutter_clean_architecture/domain/model/animal_model.dart';
import 'package:flutter_clean_architecture/domain/model/fruit_model.dart';

extension ResponseWrapperExt on ResponseWrapper {
  /// `dto -> model`로 변환하는 메서드
  ResponseWrapper<T> toModel<T>({required T? data}) {
    return ResponseWrapper<T>(
      code: code,
      status: status,
      data: data,
      message: message,
    );
  }
}

extension FruitDtoExt on FruitDto {
  /// `FruitDto -> FruitModel`로 변환하는 메서드
  FruitModel toModel() {
    return FruitModel(
      name: name,
      sort: sort,
      imageUrl: imageUrl,
    );
  }
}

extension AnimalDtoExt on AnimalDto {
  /// `AnimalDto -> AnimalModel`로 변환하는 메서드
  AnimalModel toModel() {
    return AnimalModel(
      name: name,
      type: type,
      age: age,
      thumbnail: thumbnail,
    );
  }
}
