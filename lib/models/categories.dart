class CategoryModel{
  String? name;
  String? url;

  CategoryModel({this.name, this.url});

  static mockCategories(){
    return [
      CategoryModel(name: 'Beach', url: 'assets/icons/beach.png'),
      CategoryModel(name: 'Forest', url: 'assets/icons/forest.png'),
      CategoryModel(name: 'Mountain', url: 'assets/icons/mountain.png'),
    ];
  }
}