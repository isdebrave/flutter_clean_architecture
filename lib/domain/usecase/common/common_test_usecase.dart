import 'package:flutter_clean_architecture/data/repository_impl/test_repository_impl.dart';
import 'package:flutter_clean_architecture/domain/model/result.dart';
import 'package:flutter_clean_architecture/domain/repository/test_repository.dart';
import 'package:flutter_clean_architecture/domain/usecase/base/usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonTestUsecaseProvider = Provider<CommonTestUsecase>(
  (ref) => CommonTestUsecase(ref.read(testRepositoryImplProvider)),
);

class CommonTestUsecase {
  final TestRepository _repository;

  CommonTestUsecase(this._repository);

  Future<Result> execute({
    required Usecase<TestRepository> usecase,
  }) async {
    return await usecase(_repository);
  }
}
