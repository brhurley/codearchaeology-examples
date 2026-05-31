void main() {
  bool includeBonus = true;

  // collection-if and collection-for inside a list literal
  var items = [
    'base',
    if (includeBonus) 'bonus',
    for (int i = 1; i <= 3; i++) 'item$i',
  ];

  print(items);
  print('Total items: ${items.length}');
}
