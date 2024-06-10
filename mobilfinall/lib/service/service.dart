import 'package:http/http.dart' as http;

class Api {
  static Future getTodos() {
    return http
        .get(Uri.parse("https://json-placeholder.mock.beeceptor.com/todos"));
  }
}
