import 'package:flutter/material.dart';
import 'package:newsooze/main.dart';

class error extends StatelessWidget {
  const error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Newsooze"),
        ),
        body: cuerpo_error());
  }

  Widget cuerpo_error() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Ups! Se ha presentado un error estamos trabajando para solucionarlo, por favor recarga la pagina =)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            boton_reload(),
          ],
        ),
      ),
    );
  }
}

Widget boton_reload() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        primary: Colors.deepOrange[800],
        onPrimary: Colors.white,
        onSurface: Colors.deepOrange[700]),
    onPressed: () {
      //FUNCION BOTON LOGIN
    },
    child: Text("Recargar"),
  );
}
