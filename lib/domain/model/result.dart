/// Result 패턴 모델(domain layer)
class Result<T> {
  /// 데이터
  final T? data;

  /// 에러메시지
  final String message;

  /// Result 패턴 모델(domain layer)
  const Result({
    this.data,
    this.message = '',
  });

  /// 성공인 경우
  factory Result.success({required T data}) {
    return Result(data: data);
  }

  /// 실패인 경우
  factory Result.failure({required String message}) {
    return Result(message: message);
  }

  R when<R>({
    required R Function(T data) success,
    required R Function(String message) failure,
  }) {
    if (data != null) {
      return success(data as T);
    }

    return failure(message);
  }
}
