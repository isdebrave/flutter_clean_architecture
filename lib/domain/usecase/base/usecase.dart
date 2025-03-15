import 'package:flutter_clean_architecture/domain/model/result.dart';
import 'package:flutter_clean_architecture/domain/repository/base/repository.dart';

abstract class Usecase<T extends Repository> {
  Future<Result> call(T repository);
}
