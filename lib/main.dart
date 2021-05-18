import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'dart:html';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/alignment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'LUCAS VILLA',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
          ),
          drawer: MenuLateral(),
          body: Center(
            child: (Column(
              children: [
                Image(
                  image: NetworkImage('//cloudfront-us-east-1.images.arcpublishing.com/infobae/ZVJ4IPMYBRHYLATTOBH23DVOLE.jpg'),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'Lucas no murió, a lucas lo mataron',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '¡A parar para avanzar, viva el paro Nacional!',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(
                      image: NetworkImage('https://previews.123rf.com/images/ylivdesign/ylivdesign1702/ylivdesign170206560/72340873-icono-de-calavera-y-tibias-cruzadas-ilustraci%C3%B3n-de-dibujos-animados-de-icono-de-vector-de-calavera-y-ti.jpg'),
                      height: 50,
                      width: 50,
                      alignment: Alignment.bottomCenter,
                    ),
                    Image(
                      image: NetworkImage('https://image.freepik.com/psd-gratis/corazon-bandera-colombia_118047-2662.jpg'),
                      height: 56,
                      width: 56,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ],
            )),
          ),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://www.eltiempo.com/files/image_1200_680/uploads/2021/05/05/609346683aa5c.jpeg'), fit: BoxFit.fill)),
          ),
          Ink(
            color: Colors.white,
            child: ListTile(
              title: Text(
                'Herramientas',
                style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}