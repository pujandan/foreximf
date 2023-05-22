import 'package:get/get.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "labelApp": "FOREXimf",
          "labelSearch": "Search...",
          "errorInternal":
              "The system is having problems, please try again later.",
        },
        'id_ID': {
          "labelApp": "FOREXimf",
          "labelSearch": "Cari...",
          "errorInternal":
              "Sistem sedang bermasalah silahkan coba beberapa saat lagi.",
        }
      };
}
