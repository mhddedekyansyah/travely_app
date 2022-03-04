class Place{
  String? name;
  String? country;
  String? city;
  double? rating;
  int? duration;
  String? weather;
  String? url;
  int? price;
  bool? save;

  Place({this.name, this.country, this.price, this.city, this.rating, this.duration, this.weather, this.url, this.save = false});

  static mockPlace(){
    return [
      Place(name: 'Kutai Beach', price: 250, country: 'Indonesia', city: 'Bali', save: true, rating: 4.9, duration: 3, weather: 'sunny',  url: 'assets/images/image1.png'),
      Place(name: 'Alimatha Island', country: 'Maldives', rating: 4.8, duration: 2, weather: 'winter',  url: 'assets/images/image2.png'),
      Place(name: 'Peyto Lake', country: 'Canada', city: 'Alberta', rating: 4.8, duration: 4, weather: 'winter',  url: 'assets/images/image3.png'),
    ];
  }
}