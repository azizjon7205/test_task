
class Formatters {
  static String formatBytes(int bytes) {
    const int kb = 1024;
    const int mb = 1024 * 1024;

    String format(double value, String unit) {
      if (value == value.roundToDouble()) {
        return '${value.toInt()} $unit';
      } else {
        return '${value.toStringAsFixed(2)} $unit';
      }
    }

    if (bytes >= mb) {
      return format(bytes / mb, 'MB');
    } else if (bytes >= kb) {
      return format(bytes / kb, 'KB');
    } else {
      return '$bytes B';
    }
  }



}
