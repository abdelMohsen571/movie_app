import 'package:movie_app/core/networks/error_message_model.dart';

class ServerExceptions implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerExceptions({required this.errorMessageModel});
}

class LocalDatabaseException implements Exception {
  final String message;

  LocalDatabaseException(this.message);
}
