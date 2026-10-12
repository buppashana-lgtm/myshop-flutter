import 'package:flutter/material.dart';
import '../widgets/banner_carousel.dart';
import '../widgets/product_card.dart';
import 'category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget categoryItem(
      BuildContext context,
      IconData icon,
      String title,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              categoryName: title,
            ),
          ),
        );
      },
      child: Container(
        width: 90,
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.deepOrange.shade100,
              child: Icon(
                icon,
                size: 30,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "MyShop",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Promotional Carousel
            const SizedBox(height: 15),
            const BannerCarousel(),

            const SizedBox(height: 20),

            // Categories Heading
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Horizontal Category List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  categoryItem(
                    context,
                    Icons.devices,
                    "Electronics",
                  ),
                  categoryItem(
                    context,
                    Icons.checkroom,
                    "Fashion",
                  ),
                  categoryItem(
                    context,
                    Icons.directions_run,
                    "Shoes",
                  ),
                  categoryItem(
                    context,
                    Icons.face,
                    "Beauty",
                  ),
                  categoryItem(
                    context,
                    Icons.watch,
                    "Accessories",
                  ),
                  categoryItem(
                    context,
                    Icons.home,
                    "Home",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Popular Products Heading
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Product Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
