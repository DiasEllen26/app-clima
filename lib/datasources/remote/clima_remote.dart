import 'package:api_pokemon/config.dart';
import 'package:api_pokemon/models/clima_model.dart';
import 'package:api_pokemon/services/cliente_http.dart';

class ClimaRemote {
  final _clienteHttp = ClienteHttp();
  
  Future<List<Clima>> get() async {
    final lista = await _clienteHttp.getJson(linkAPI);

    return lista.map((e) =>
        Clima(temperature: e["temperature"],
            wind: e["wind"],
            description: e["description"])).toList();
  }
}