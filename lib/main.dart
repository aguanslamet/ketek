import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATG',
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/screen2': (BuildContext context) => new Screen2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget phoneSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    'Welcome To Yusuf ZOO' ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = RaisedButton(
      child: const Text('Lihat Hewan'),
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Theme.of(context).accentColor,
      elevation: 4.0,
      splashColor: Colors.blueGrey,
      onPressed: () {
        Navigator.of(context).pushNamed('/screen2');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ZOO'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/bkm.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          phoneSection,
          buttonSection,
        ],
      ),
    );
  }

  void button1(BuildContext context) {
    Navigator.of(context).pushNamed('/screen2');
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back,color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: new TabBar(
              isScrollable: true,
              tabs: <Widget>[
                new Tab(text: 'Monyet Jawa', icon: Icon(Icons.pets)),
                new Tab(text: 'Babon', icon: Icon(Icons.pets)),
                new Tab(text: 'Lutung', icon: Icon(Icons.pets)),
                new Tab(text: 'Orang Utan', icon: Icon(Icons.pets)),
              ],
            ),
          ),
          body: new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(child: new TabBarView(
                  children: <Widget>[
                    new ListView(
                      children: list1,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list2,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list3,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list4,
                      scrollDirection: Axis.vertical,
                    ),
                  ],

            ),
                ),
              ],
            ),
        ),
      ),
    ),
    );
  }
}

List<Widget> list1 = <Widget>[

  new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset( 
      'images/mhml.jpg',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Monyet Jawa',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Monyet yang ini Merupakan Monyet yang sering merusak Tanaman/ pertanian Warga '),

  ),
];
List<Widget> list2 = <Widget>[

   new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/bkm.jpg',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Babon',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Babon Merupakan sepesies monyet yang sudah hampir punah'),
  ),
  
];
List<Widget> list3 = <Widget>[
    new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/bm.jpg',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Lutung',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Lutung ini berasal dari jawa yang populasinya masih lumayan banyak, tetapi seringnya mereka turun ke pemukiman warga menyebapkan kerusakan lahan pertanian warga sekitar'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
];
List<Widget> list4 = <Widget>[
   new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/mhml.jpg',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Orang Utan',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Orang hutan jenis ini sudah hampir punah di indonesia, karna seringnya perburuan liar oknum yang tidak bertanggung jawab'),
  ),

 
];

