import 'package:moli_menu/shared/domain/models/either.dart';
import 'package:moli_menu/shared/domain/models/response.dart';
import 'package:moli_menu/shared/exceptions/http_exception.dart';

abstract class NetworkService {
  String get baseUrl;
  void updateHeader(Map<String, String> header);
  Future<Either<AppException, Response>> get(
    String endpoint, {
    Map<String, String>? queryParameters,
  });

  Future<Either<AppException, Response>> post(
    String endpoint, {
    Map<String, String>? data,
  });
}
