import 'package:flutter/material.dart';
import 'hasil.dart';
import 'about.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Home(),
      '/Haldua': (BuildContext context) => new MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  double _alas = 0;
  double _tinggi = 0;
  double _luas = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung Luas Jajargenjang'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.blueGrey,
            child: Image.network(
              "https://i2.wp.com/www.mahirmatematika.com/wp-content/uploads/2018/10/jajar-genjang.jpg?fit=535%2C342&ssl=1",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "AYO HITUNG LUAS JAJAR GENJANG !",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text("Alas Jajar Genjang"),
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      _alas = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("Tinggi Jajar Genjang"),
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      _tinggi = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                ),
              )
            ],
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Hasil(alas: _alas, tinggi: _tinggi, luas: _luas)));

              setState(() {
                _luas = _alas * _tinggi;
              });
            },
            child: Text("Hitung"),
          ),
        ],
      ),
    );
  }
}
