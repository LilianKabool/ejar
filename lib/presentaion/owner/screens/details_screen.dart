
import 'package:flutter/material.dart';

import '../../../feature/owner/entity/my_products_entity.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductData product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              product.image,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Price: ${product.price} ${product.priceUnit}',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.description),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Attributes', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: product.attributes.length,
              itemBuilder: (context, index) {
                Attribute attribute = product.attributes[index];
                return ListTile(
                  title: Text(attribute.name),
                  subtitle: Text(attribute.value),
                  leading: Icon(Icons.check),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
