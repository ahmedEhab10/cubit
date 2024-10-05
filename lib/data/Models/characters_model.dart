class CharactersModel {
  int id;
  String name;
  String status;
  String species;
  String gender;
  String image;
  DateTime created;
  CharactersModel(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image,
      required this.created});

  factory CharactersModel.fromjson(Map<String, dynamic> json) {
    return CharactersModel(
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
