import 'dart:async';
import 'dart:developer' as developer;

mixin class LoggerPlus {
  String? _name;
  bool closeLog = false;

  static final LoggerPlus _instance = LoggerPlus.byName("DefaultLogger");

  static LoggerPlus byName(String name) {
    LoggerPlus loggerPlus = LoggerPlus();
    loggerPlus._name = name;
    return loggerPlus;
  }

  static void logWithDefault(
      Object? object, {
        DateTime? time,
        int? sequenceNumber,
        int level = 0,
        String name = '',
        Zone? zone,
        Object? error,
        StackTrace? stackTrace,
      }) {
    _instance.log(object?.toString() ?? 'NULL LOG',
        error: error, stackTrace: stackTrace, time: time, name: name);
  }

  void log(
    String message, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (name == '') {
      name = _name ?? runtimeType.toString();
    }
    if (!closeLog) {
      DateTime now = time ?? DateTime.now();
      if(error != null) {
        developer.log(message, name: name, time: now, level: level, zone: zone, error: error, stackTrace: stackTrace);
      } else {
        print("[$name] ${now.toLocal()} $message");
      }
    }
  }

  void printLog(
    Object? object, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(object?.toString() ?? 'NULL LOG',
        error: error, stackTrace: stackTrace, time: time, name: name);
  }
}
