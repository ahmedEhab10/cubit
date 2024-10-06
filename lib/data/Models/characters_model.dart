class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  late DateTime created;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    gender = json['gender'];
    image = json['image'];
    created = DateTime.parse(json['created']);
  }
}
