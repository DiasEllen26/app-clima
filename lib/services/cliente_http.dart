import 'dart:convert';

import 'package:http/http.dart' as http;

class ClienteHttp {
  Future<List<dynamic>> getJson(String link) async {
    try {
      var response = await http.get(Uri.parse(link));

      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        return result;
      } else {
        throw Exception('Fala ao carregar dados da Api: ${response.statusCode}');
      }
    } catch (error){
      throw Exception('Erro ao fazer solicitação HTTP: $error');
    }
 }
}