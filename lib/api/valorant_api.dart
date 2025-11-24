import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchSkins() async {
  try {
    final response = await http.get(Uri.parse('https://valorant-api.com/v1/weapons/skins'));

    print("STATUS CODE: ${response.statusCode}");
    print("RESPONSE: ${response.body}");

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final List<dynamic> data = body['data'];
      return data.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception('Status diferente de 200');
    }
  } catch (e) {
    print("Erro ao carregar skins: $e");
    rethrow;
  }
}

