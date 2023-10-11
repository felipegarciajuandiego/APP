import 'package:app/categoria.dart';
import 'package:app/proveedor.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:app/producto.dart';
import 'package:app/home.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ProductoAdapter());
  var boxp = await Hive.openBox('productos');
  Hive.registerAdapter(CategoriaAdapter());
  var boxc = await Hive.openBox('categorias');
  Hive.registerAdapter(ProveedorAdapter());
  var boxproveedor = await Hive.openBox('proveedor');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your a-pplication.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
