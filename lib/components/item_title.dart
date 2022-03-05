import 'package:flutter/material.dart';
import 'package:lab03/Provider/cart_provider.dart';
import 'package:lab03/data.dart';
import 'package:provider/provider.dart';

class ItemTitle extends StatelessWidget {
  final Item item;
  const ItemTitle({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(children: [
        Expanded(child: Image.network(item.image)),
        Text(
          item.name,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          '${item.price}',
          style: Theme.of(context).textTheme.caption,
        ),
        IconButton(
            onPressed: () {
              Provider.of<CartProvider>(context, listen: false).addItem(item);
            },
            icon: Icon(Icons.shopping_cart))
      ]),
    );
  }
}
