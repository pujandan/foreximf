import 'package:foreximf/core/storages/flutter_dotenv.dart';

class EndPoint {
  final _env = FlutterDotEnv();

  String get newsTopHeadline => "${_env.apiBaseUrl}/top-headlines";
  String get newsEverything => "${_env.apiBaseUrl}/everything";
}
