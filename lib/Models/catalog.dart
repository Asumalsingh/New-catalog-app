import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.name,
    required this.id,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
  // ignore: empty_constructor_bodies

  Item copyWith({
    String? name,
    int? id,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      name: name ?? this.name,
      id: id ?? this.id,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      name: map['name'],
      id: map['id'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, id: $id, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.name == name &&
        other.id == id &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        id.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
