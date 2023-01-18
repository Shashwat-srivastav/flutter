// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyItems {
  static var product = [
    // Item(
    //     id: "first dish",
    //     name: "Noodle",
    //     des: "spanish noodle",
    //     price: 35,
    //     color: "blue",
    //     img:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStgkoxBA5VC3pvUqvaexx8JL3hvbRwu6zriw&usqp=CAU"),
    // Item(
    //     id: "second dish",
    //     name: "Noodle",
    //     des: "Chinese Noodle",
    //     price: 35,
    //     color: "yellow",
    //     img:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIckxlFwKi_h7bf6Xachhqm00OsNjNHK99fA&usqp=CAU")
  ];

  Item getById(num i) {
    return product.firstWhere((element) => element.id == i);
  }
}

class Item {
  final num id;
  final String name;
  final String des;
  final num price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.des,
      required this.price,
      required this.color,
      required this.img});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      des: map["des"],
      price: map["price"],
      color: map["color"],
      img: map["img"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "des": des,
        "price": price,
        "color": color,
        "img": img,
      };
  // Item({this.id, this.name, this.des, this.price, this.color,  this.img});

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.des == des &&
        other.price == price &&
        other.color == color &&
        other.img == img;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        des.hashCode ^
        price.hashCode ^
        color.hashCode ^
        img.hashCode;
  }

  @override
  String toString() {
    return 'Item(id: $id, name: $name, des: $des, price: $price, color: $color, img: $img)';
  }
}
