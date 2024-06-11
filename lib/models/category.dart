class Category {
  int? id;
  String? name;

  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

List<Category> dummyLombaCategory = [
  Category(name: "IT"),
  Category(name: "Bisnis"),
];

List<Category> dummyMentorCategory = [
  Category(name: "Untuk Pemula"),
  Category(name: "Untuk Menengah"),
  Category(name: "Untuk Profesional"),
];
