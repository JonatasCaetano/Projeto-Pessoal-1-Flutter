import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(

    home: Home (),
  )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n1= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 600)),
            Text('$n1',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed: ( ){
            setState(() {
              n1=n1+1;
            });
          },
            color: Colors.red,
            child: Text('Clique',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



/*

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          RaisedButton(onPressed: (){
    print('clicado');
    },
      color: Colors.black,
      child: Text('Clique',
        style: TextStyle(
            color: Colors.white,
        ),
      ),
    )
    ],
    ),
    );
  }
}

*/