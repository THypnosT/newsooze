import 'package:flutter/material.dart';
import 'package:newsooze/main.dart';

class ajustes extends StatelessWidget {
  const ajustes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ajustes"),
        ),
        body: cuerpo_ajustes());
  }

  Widget cuerpo_ajustes() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
              fit: BoxFit.cover)),
    );
  }
}
