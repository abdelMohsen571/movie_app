import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String statusCode;
  final String statusMessage;
  final bool succes;

  ErrorMessageModel(
      {required this.statusCode,
      required this.statusMessage,
      required this.succes});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
          statusCode: json['status_code'],
          statusMessage: json['status_message '],
          succes: json['success']);

  @override
  List<Object> get props => [statusCode, statusMessage, succes];
}
