import 'package:carrocompras/domain/controller/controladorcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Carrito extends StatelessWidget {
  const Carrito({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    ControlarCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facturación'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Salchipapa Familiar: '),
              Text('${controlc.salchi}')
            ],
          )
        ],
      ),
    );
  }
}