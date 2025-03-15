import 'package:flutter_clean_architecture/domain/model/result.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';
import 'package:flutter_clean_architecture/domain/repository/test_repository.dart';
import 'package:flutter_clean_architecture/domain/usecase/base/usecase.dart';

class GetAnimalsUsecase extends Usecase<TestRepository> {
  @override
  Future<Result<ViewModuleModel>> call(TestRepository repository) async {
    final response = await repository.getAnimals();

    if (response.data == null) {
      return Result.failure(message: '데이터가 null입니다.');
    }

    final viewModuleData = ViewModuleModel.fromJson(response.data!.toJson());

    return response.status == 'success'
        ? Result.success(data: viewModuleData)
        : Result.failure(message: response.message);
  }
}
