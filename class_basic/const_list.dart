class City {
  City(this.name);

  final String name;
}

void main() {
  const citiesLst = ['Paris', 'London', 'Madrid'];

  citiesLst[1] = 'Geneva'; // causes runtime exception

  //const cityInstancesLst = [City('Bern')];

  print(citiesLst);
  //print(cityInstancesLst);
}
