class AppException implements Exception{
  final _Message;
  final _prefix;
  AppException([this._Message, this._prefix]);
  String toString(){
    return "${this._prefix} ${this._Message}";
  }
}
class CommunicationException extends AppException{
  CommunicationException(String Message) : super(Message, "Communication error :");
}
class InvalidInputException extends AppException{
  InvalidInputException(String Message) : super(Message, "Invalid input :");
}
class UnauthorizedException extends AppException{
  UnauthorizedException(String Message) : super(Message, "Unauthorized access :");
}