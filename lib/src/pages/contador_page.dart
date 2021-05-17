import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 28);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMPLICE SISTEMAS S.A. DE C.V.'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Prueba el contador',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            _eliminar();
          },
        ),
        SizedBox(
          width: 7.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            _reiniciar();
          },
        ),
        SizedBox(
          width: 7.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _agregar();
          },
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      print('has presionado el botón agregar');
      _conteo++;
    });
  }

  void _eliminar() {
    setState(() {
      print('has presionado el botón eliminar');
      _conteo--;
    });
  }

  void _reiniciar() {
    setState(() {
      print('has presionado el botón reiniciar');
      _conteo = 0;
    });
  }
}
