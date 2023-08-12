import 'package:watch_cloud/core/network/error_message_model.dart';

class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});

}
class LocalDatabaseException implements Exception{
  final String errorMessage;

  const LocalDatabaseException({required this.errorMessage});
}