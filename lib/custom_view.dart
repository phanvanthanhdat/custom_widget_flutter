
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
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
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
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              onPressed: (){
                print("seto");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PackageFlutterDetail(param: this.widget.param, callback: (String text){
                    print(text ?? "");
                    setState(() {
                    });
                  },)),
                );
              },
              child: Text("Detail"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
          )
        ],
      ),
    ),
  );
  }

}


class PackageFlutterDetail extends StatefulWidget {
  String param = "";
  Function(String) callback;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PackageFlutterDetailState();
  }

  PackageFlutterDetail({this.param, this.callback});
}

class _PackageFlutterDetailState extends State<PackageFlutterDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Plugin Flutter Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Hello VNPT IT2", style: TextStyle(fontSize: 25, color: Colors.blue),),
              SizedBox(height: 10,),
              Text("Param: " + (this.widget.param ?? "")),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Back"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}