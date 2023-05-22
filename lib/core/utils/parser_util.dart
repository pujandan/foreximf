class ParserUtil {
  static final ParserUtil _singleton = ParserUtil._internal();

  factory ParserUtil() {
    return _singleton;
  }

  ParserUtil._internal();

  int dynamicToInt(dynamic n) {
    try {
      return int.parse(n);
    } catch (_) {
      return 0;
    }
  }
}
