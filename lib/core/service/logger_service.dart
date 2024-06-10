class LoggerService {
  static void log(String message) {
    log('[LOG] \x1B[32m$message\x1B[0m');
  }

  static void error(String message, {String? name}) {
    log('[ERROR ${name != null ? '($name)' : ''}] \x1B[31m$message\x1B[0m');
  }

  static void warning(String message) {
    log('[WARNING] \x1B[33m$message\x1B[0m');
  }
}
