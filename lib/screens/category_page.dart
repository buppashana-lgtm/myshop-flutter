import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),

      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        padding: const EdgeInsets.all(10),
        children: const [
          ProductCard(
            name: "Headphones",
            image: "https://placehold.co/300x300/png",
            price: 1499,
          ),
          ProductCard(
            name: "Smart Watch",
            image: "https://placehold.co/300x300/png",
            price: 1999,
          ),
          ProductCard(
            name: "Sneakers",
            image: "https://placehold.co/300x300/png",
            price: 2499,
          ),
          ProductCard(
            name: "Backpack",
            image: "https://placehold.co/300x300/png",
            price: 999,
          ),
          ProductCard(
            name: "T-Shirt",
            image: "https://placehold.co/300x300/png",
            price: 799,
          ),
          ProductCard(
            name: "Sunglasses",
            image: "https://placehold.co/300x300/png",
            price: 599,
          ),
        ],
      ),
    );
  }
}
