import 'package:equatable/equatable.dart';

import 'rating.dart';

class Prodect extends Equatable {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  const Prodect({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory Prodect.fromJson(Map<String, dynamic> json) => Prodect(
    id: json['id'] as int?,
    title: json['title'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    description: json['description'] as String?,
    category: json['category'] as String?,
    image: json['image'] as String?,
    rating: json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'price': price,
    'description': description,
    'category': category,
    'image': image,
    'rating': rating?.toJson(),
  };

  @override
  List<Object?> get props {
    return [id, title, price, description, category, image, rating];
  }
}
