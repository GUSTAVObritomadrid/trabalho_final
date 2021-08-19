import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Jogos.dart';

class Cores {
  static Color verde = Color(0xff1DF272);
  static Color roxo = Color(0xff291333);
}

class Logindart extends StatefulWidget {
  const Logindart({Key? key}) : super(key: key);

  @override
  _LogindartState createState() => _LogindartState();
}

class _LogindartState extends State<Logindart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Cores.roxo,
          title: Text("Bem vindo!"),
        ),
        drawer: Drawer(
          child: Container(
            color: Cores.verde,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text('LevelUp'),
                ),
                ListTile(
                  title: Text('Missões'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => jogos()));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('nao definido'),
                  onTap: () {},
                  focusColor: Cores.roxo,
                ),
                Divider(),
                ListTile(
                  title: Text('nao definido'),
                  onTap: () {},
                ),
                Divider(),
              ],
            ),
          ),
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Image.asset("img/levelup.png"),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Text("Digite seu email e senha",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

            //style: TextStyle(
            // fontSize: 25,
          ),
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                icon: Icon(Icons.email),
                labelText: "Digite seu email",
              )),
          SizedBox(
            height: 25,
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
              icon: Icon(Icons.password_outlined),
              labelText: "Digite sua senha",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            //ignore: deprecated_member_use
            child: RaisedButton(
              color: Cores.roxo,
              textColor: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                "Logar",
                style: TextStyle(fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => jogos()));
              },
            ),
          )
        ]));
  }
}
