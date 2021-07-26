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
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 12 pro",
        desc: "i phone 12 pro 12 generation",
        color: 'black',
        image:
            'https://www.reliancedigital.in/medias/Apple-12-Pro-Smartphones-491901565-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjU0MDV8aW1hZ2UvanBlZ3xpbWFnZXMvaDFjL2g1Yy85NDA3ODE2Njk1ODM4LmpwZ3wwOWJjNDVhM2NhMjYwNzBiNmFjM2Y3OWNjOWViYzg3MzQxZGZlMTEzYWQ0MWI1YTUyOTc2OTBkY2RkZjg0MTJm',
        price: 999)
  ];
}
