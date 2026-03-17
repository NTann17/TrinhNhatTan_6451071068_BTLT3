import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../widgets/item_tile.dart';

class ItemListView extends StatefulWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  State<ItemListView> createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  List<ItemModel> items = List.generate(
    4,
    (index) => ItemModel(title: 'Item '),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('MSSV: 6451070168', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ItemTile(
                item: item,
                onDismissed: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
