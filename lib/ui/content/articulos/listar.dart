import 'package:flutter/material.dart';

class ListArticulos extends StatelessWidget {
  const ListArticulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lista de articulos firestore'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}