import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/data/data_source/mock/test_mock_api.dart';
import 'package:flutter_clean_architecture/data/dto/animal_dto.dart';
import 'package:flutter_clean_architecture/data/dto/response_wrapper.dart';
import 'package:flutter_clean_architecture/data/data_source/remote/common/common_test_api.dart';
import 'package:flutter_clean_architecture/data/dto/fruit_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testApiProvider = Provider<CommonTestApi>(
  // (ref) => TestApi(Dio()),
  (ref) => TestMockApi(),
);

class TestApi extends CommonTestApi {
  final Dio _dio;

  TestApi(this._dio);

  @override
  Future<ResponseWrapper<FruitDto>> getFruits() async {
    try {
      final response = await _dio.get('https://example.com/fruits');

      return ResponseWrapper(
        status: 'success',
        code: 200,
        data: response.data,
      );
    } catch (error) {
      debugPrint('error => $error');

      return ResponseWrapper(
        status: 'error',
        code: 404,
        message: '과일 정보를 가져오지 못했습니다.',
      );
    }
  }

  @override
  Future<ResponseWrapper<AnimalDto>> getAnimals() async {
    try {
      final response = await _dio.get('https://example.com/animals');

      return ResponseWrapper(
        status: 'success',
        code: 200,
        data: response.data,
      );
    } catch (error) {
      debugPrint('error => $error');

      return ResponseWrapper(
        status: 'error',
        code: 404,
        message: '동물 정보를 가져오지 못했습니다.',
      );
    }
  }
}
