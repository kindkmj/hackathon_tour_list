abstract class ApiResults {
  const ApiResults({
    required this.code,
    this.message,
    this.status,
    this.data,
  });

  final int code;
  final String? message;
  final String? status;
  final Map<String, dynamic>? data;
}

class ApiSuccess extends ApiResults {
  const ApiSuccess({
    required int code,
    Map<String, dynamic>? data,
    String? message,
    String? status,
  }) : super(code: code, message: message, status: status, data: data);

  factory ApiSuccess.fromJson(dynamic json) {
    json = json as Map<String, dynamic>;
    return ApiSuccess(
        code: json['code'] as int? ?? 200,
        message: json['message'] as String? ?? '',
        status: json['status'] as String? ?? '',
        data: json['data'] as Map<String, dynamic>?
    );
  }

  ApiSuccess copyWith({
    int? code,
    String? message,
    String? status,
    Map<String, dynamic>? data,
  }) =>
      ApiSuccess(
        code: code ?? this.code,
        message: message ?? this.message,
        status: status ?? this.status,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['status'] = status;
    map['data'] = data;
    return map;
  }

  @override
  String toString() {
    return 'ApiSuccess{_code: $code, _message: $message , _status: $status, _data: $data}';
  }
}

class ApiFailure extends ApiResults {
  const ApiFailure({
    required int code,
    String? message,
    String? status,
    Map<String, dynamic>? data
  }) : super(code: code, message: message, status: status, data: data);

  factory ApiFailure.fromJson(dynamic json) {
    json = json as Map<String, dynamic>;
    return ApiFailure(
      code: json['code'] as int? ?? 500,
      message: json['message'] as String? ?? '',
      status: json['status'] as String? ?? '',);
  }

  ApiFailure copyWith({
    int? code,
    String? message,
    String? status,
    Map<String, dynamic>? data,
  }) =>
      ApiFailure(
        code: code ?? this.code,
        message: message ?? this.message,
        status: status ?? this.status,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['status'] = status;
    map['data'] = data;
    return map;
  }

  @override
  String toString() {
    return 'ApiFailure{_code: $code, _message: $message , _status: $status, _data: $data}';
  }
}
