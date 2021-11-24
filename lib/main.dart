import 'package:flutter/material.dart';
import 'package:newsooze/pagina_contenido/ajustes.dart';
import 'package:newsooze/pagina_contenido/error.dart';
import 'package:newsooze/pagina_contenido/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Newsooze",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Newsooze"),
        ),
        body: cuerpo(context));
  }

  Widget cuerpo(context) {
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
            text_inicio(),
            email(),
            clave(),
            boton_log(context),
            text_reg(),
            text_linkreg()
          ],
        ),
      ),
    );
  }
}

Widget text_inicio() {
  return Text(
    "Iniciar de Sesion",
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
  );
}

Widget email() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Correo Electronico",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget clave() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Clave",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget boton_log(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        primary: Colors.deepOrange[800],
        onPrimary: Colors.white,
        onSurface: Colors.deepOrange[700]),
    onPressed: () {
      //FUNCION BOTON LOGIN
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => feed()),
      );
    },
    child: Text("Login"),
  );
}

text_reg() {
  return Text("¿Nuevo en la pagina?",
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ));
}

text_linkreg() {
  return Text("Registrarse",
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ));
}
