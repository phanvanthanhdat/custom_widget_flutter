
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("seto kaiba4");
  }

}

class PackageFlutter extends StatefulWidget {
  String param = "";
  Function(String) callback;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PackageFlutterState();
  }

  PackageFlutter({this.param, this.callback});
}

class _PackageFlutterState extends State<PackageFlutter>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      title: Text("Plugin Fluter"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Param: " + (this.widget.param ?? "")),
        TextField(
          onChanged: (text){
            if(this.widget.callback != null){
              this.widget.callback(text);
            }
          },
        ),
        FlatButton(
          color: Colors.blue,
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("Back"),
        )
      ],
    ),
  );
  }

}