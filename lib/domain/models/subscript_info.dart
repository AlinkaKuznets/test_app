class Subscript {
  const Subscript({
    required this.id,
    required this.duration,
    required this.price,
    required this.oldPrice,
    required this.description,
    required this.features,
  });

  final String duration;
  final String price;
  final String? oldPrice;
  final String description;
  final int id;
  final List<String> features;
}
