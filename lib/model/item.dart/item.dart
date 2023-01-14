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
}

class Item {
  final String id;
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
}
