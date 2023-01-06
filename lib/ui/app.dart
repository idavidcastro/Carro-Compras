import 'package:carrocompras/ui/auth/login.dart';
import 'package:carrocompras/ui/authf/loginf.dart';
import 'package:carrocompras/ui/content/articulos/crear.dart';
import 'package:carrocompras/ui/content/articulos/listar.dart';
import 'package:carrocompras/ui/pages/carrito.dart';
import 'package:carrocompras/ui/pages/content/articulos/add.dart';
import 'package:carrocompras/ui/pages/content/articulos/list.dart';
import 'package:carrocompras/ui/pages/producto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de compras',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const Login(),
        '/productos': (context) => const Producto(),
        '/carrito': (context) => const Carrito(),
        '/loginf': (context) => const Loginf(),
        '/artadd': (context) => const AddArticulos(),
        '/artlist': (context) => const ListArticulos(),
        '/articulos': (context) => const AdicionarArticulos(),
        '/listararticulos': (context) => const ListarArticulos(),
      },
      home: const Loginf(),
    );
  }
}
