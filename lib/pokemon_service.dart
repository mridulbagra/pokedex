import 'package:pokedex_fluter/networking.dart';
import 'package:pokedex_fluter/pokemon.dart';

const kBaseUrl = 'https://pokeapi.co/api/v2';

class PokemonService {
  static Future<Pokemon> fetchPokemon(String pokemonName) async {
    final String url = '$kBaseUrl/pokemon/$pokemonName';
    final response = await NetworkHelper.getData(url);

    return Pokemon.fromJson(response);
  }
}
