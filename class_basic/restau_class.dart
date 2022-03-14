class Restaurant {
  final String name;
  final String cuisinne;
  final List<double> ratings;

  const Restaurant(
      {required this.name, required this.cuisinne, required this.ratings});

  String description() {
    return '$name: $cuisinne type food. Rating: ${rating.toStringAsFixed(2)}';
  }

  double get rating =>
      (ratings.reduce((value, element) => value + element) / ratings.length);

  set rating(double rating) => ratings.add(rating);
}

void main() {
  Restaurant restau = Restaurant(
      name: 'Thaï Basilic', cuisinne: 'thaï', ratings: [9.8, 10, 10, 9]);

  print(restau.description());

  restau.rating = 8.5;
  restau.rating = 9.5;
  restau.rating = 10;

  print(restau.description());
}
