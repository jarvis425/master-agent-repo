import 'package:http/http.dart' as http;
class ApiService {
  Future<http.Response> fetchData() async {
    return await http.get(Uri.parse('https://example.com/api/data'));
  }
}