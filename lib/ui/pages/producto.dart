import 'package:carrocompras/domain/controller/controladorcarrito.dart';
import 'package:carrocompras/ui/pages/carrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Producto extends StatelessWidget {
  const Producto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControlarCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de productos'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(()=>const Carrito());
            }, 
            icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed:() {
                  controlc.removeSalchipapa();
                }, 
                icon: const Icon(Icons.remove_circle)),
                const Text('Salchipapa Familiar'),
               IconButton(
                onPressed:() {
                  controlc.addSalchipapa();
                }, 
                icon: const Icon(Icons.add_circle)),
                Obx(()=>Text('${controlc.salchi}')),
                //const Text('Text'),
            ],
          )
          
          
        ]),
    );
  }
}