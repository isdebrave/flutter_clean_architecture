/// 데이터에 추가로 정보를 더해주는 wrapper(data layer)
class ResponseWrapper<T> {
  /// 상태(initial, loading, success, failure)
  final String status;

  /// 상태 코드
  final int code;

  /// 에러 메시지
  final String message;

  /// 데이터
  T? data;

  /// 데이터에 추가로 정보를 더해주는 wrapper(data layer)
  ResponseWrapper({
    this.status = '',
    this.code = 200,
    this.message = '',
    this.data,
  });
}
