import 'package:flutter/material.dart';
import '../views/item_list_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item List Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Item List')),
        body: const ItemListView(),
      ),
    );
  }
}
