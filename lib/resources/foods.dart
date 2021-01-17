class Foods {
  String category;

  List<Map<String, dynamic>> categoryFood;

  Foods(this.category, this.categoryFood);
}

List foodsAre = [
  Foods('alCarte', [
    {
      'name': 'Mutton Tauko Fry',
      'image': 'assets/icons/ceviche.png',
      'rate': '234'
    },
    {'name': 'Tauko Boil', 'image': 'assets/icons/ceviche.png', 'rate': '234'},
    {'name': 'Hykula Fry', 'image': 'assets/icons/ceviche.png', 'rate': '234'},
    {'name': 'Mutton Gidi', 'image': 'assets/icons/ceviche.png', 'rate': '234'},
    {'name': 'Bhuttan', 'image': 'assets/icons/ceviche.png', 'rate': '234'},
  ]),
];
