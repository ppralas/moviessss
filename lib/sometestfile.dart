final cakeJson = {
  "id": "0001",
  "type": "donut",
  "name": "Cake",
  "ppu": 0.55,
  "batters": {
    "batter": [
      {"id": "1001", "type": "Regular"},
      {"id": "1002", "type": "Chocolate"},
      {"id": "1003", "type": "Blueberry"},
      {"id": "1004", "type": "Devil's Food"}
    ]
  },
  "topping": [
    {"id": "5001", "type": "None"},
    {"id": "5002", "type": "Glazed"},
    {"id": "5005", "type": "Sugar"},
    {"id": "5007", "type": "Powdered Sugar"},
    {"id": "5006", "type": "Chocolate with Sprinkles"},
    {"id": "5003", "type": "Chocolate"},
    {"id": "5004", "type": "Maple"}
  ]
};

class Cake {
  final String id;
  final String type;
  final String name;
  final double ppu;
  final Batter batters;
  final List<Topping> topping;

  Cake({
    required this.id,
    required this.type,
    required this.name,
    required this.ppu,
    required this.batters,
    required this.topping,
  });
  
}

class Batters {
  final List<Batter> barter;
  Batters(
    this.barter,
  );

  factory Batters.fromJson(Map<List, dynamic> nestedJson) => Batters(
        nestedJson['batter'],
      );
}

class Batter {
  final String id;
  final String type;

  Batter(this.id, this.type);

  factory Batter.fromJson(Map<String, dynamic> nestedJson) =>
      Batter(nestedJson['id'], nestedJson['type']);
}

class Topping {
  final String id;
  final String type;

  Topping({
    required this.id,
    required this.type,
  });

  factory Topping.fromJson(Map<String, dynamic> nestedJson) =>
      Topping(id: nestedJson['id'], type: nestedJson['type']);
}

class BatterType {
  final int id;
  final String type;

  BatterType({
    required this.id,
    required this.type,
  });

  factory BatterType.fromJson(Map<String, dynamic> nestedJson) =>
      BatterType(id: nestedJson['id'], type: nestedJson['type']);
}
