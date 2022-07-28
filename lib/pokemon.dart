class Pokemon {
  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.sprites,
  });

  final int id;
  final String name;
  final int height;
  final int weight;
  final List<Type> types;
  final Sprites sprites;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        height: json["height"],
        id: json["id"],
        name: json["name"],
        sprites: Sprites.fromJson(json["sprites"]),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        weight: json["weight"],
      );

  String getTypes() {
    List<String> typesList = [];

    for (final type in types) {
      typesList.add(type.type.name);
    }

    return typesList.join(', ');
  }
}

class Sprites {
  Sprites({
    this.backDefault,
    this.frontDefault,
  });

  String? backDefault;
  dynamic backFemale;
  String? frontDefault;

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        frontDefault: json["front_default"],
      );
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  int slot;
  Species type;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
      );
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );
}
