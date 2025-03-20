/*
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'https://example.com/api/data';

  // Function to fetch API data based on selected language
  static Future<Map<String, dynamic>> fetchData(String langCode) async {
    String apiUrl = '$baseUrl?lang=$langCode';  // Add language code to the API URL

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;  // Return the API response
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error fetching data: $e');
      throw e;
    }
  }
}
*/
