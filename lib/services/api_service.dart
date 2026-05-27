import 'package:http/http.dart' as http;
class ApiService {
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('https://example.com/api/data'));
    return response.body;
  }
}