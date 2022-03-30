import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger();

Logger get logger => _logger;

class AppDependencies {
  AppDependencies(this.dio);

  final Dio dio;
}

abstract class DI {
  static AppDependencies initializeDependencies() {
    final dio = Dio();

    return AppDependencies(dio);
  }
}
