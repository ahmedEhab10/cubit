class Character {
  int id;
  String name;
  String status;
  String species;
  String gender;
  String image;
  DateTime created;
  Character(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image,
      required this.created});

  factory Character.fromjson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      gender: json['gender'],
      image: json['image'],
      created: DateTime.parse(json['created']),
    );
  }
}
