import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  FavoritesScreen({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('favorites'),
      ),
      body: favoriteItems.isEmpty
          ? Center(
              child: Text('there are on favorite items now'),
            )
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final product = favoriteItems[index];
                return ListTile(
                  title: Text(product['name']),
                  subtitle: Text('\$${product['price']}'),
                  leading: Image.asset(
                    product['imageUrl'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
