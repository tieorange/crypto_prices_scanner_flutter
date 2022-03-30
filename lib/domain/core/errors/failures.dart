import 'package:crypto_prices/domain/dependency_injection/di.dart';

abstract class Failure {
  Failure(this.exception, this.methodName) {
    logger.e('Caught in $methodName. Error: ${exception?.toString()}');
  }

  final dynamic exception;

  final String methodName;
}

///ApiFailure represents error caused by API (endpoints). Those failures are
///mainly server based and they are not ours fault.
class ApiFailure extends Failure {
  ApiFailure(dynamic exception, String methodName)
      : super(exception, methodName);
}

///ConnectionFailure represents error caused by unsuccessful attempts
///to connect to the internet.
class ConnectionFailure extends Failure {
  ConnectionFailure(dynamic exception, String methodName)
      : super(exception, methodName);
}

///HiveFailure represents error caused by Hive database. The Hive box might been
///empty or didn't exist. There might been problem with migration
/// or database integrity.
class HiveFailure extends Failure {
  HiveFailure(dynamic exception, String methodName)
      : super(exception, methodName);
}

//If we don't know what happened
class UndefinedFailure extends Failure {
  UndefinedFailure(dynamic exception, String methodName)
      : super(exception, methodName);
}
