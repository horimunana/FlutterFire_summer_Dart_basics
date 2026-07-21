class Logger {
  void log(String msg) => print('[LOG] $msg');
}

// This mixin can ONLY be used on subclasses of Logger
mixin Timestamped on Logger {
  void logWithTime(String msg) {
    final now = DateTime.now();
    log('$now: $msg'); // Accesses log() from Logger thanks to "on Logger"
  }
}

class AppLogger extends Logger with Timestamped {}
