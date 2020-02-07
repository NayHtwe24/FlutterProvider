import 'package:flutter/material.dart';
import 'package:provider_collection/change_notifier.dart';
import 'package:provider_collection/consumer.dart';
import 'package:provider_collection/future_provider.dart';
import 'package:provider_collection/multi_provider.dart';
import 'package:provider_collection/proxy_provider.dart';
import 'package:provider_collection/stream_provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyChange()));
                },
                  child: Text(
                    "Change Notifier"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyStream()));
                },
                  child: Text(
                      "Stream Provider"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyFuture()));
                  },
                  child: Text(
                      "Future Provider"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyMultiProvider()));
                  },
                  child: Text(
                      "Multi Provider"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyConsumer()));
                  },
                  child: Text(
                      "Consumer"
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyProxy()));
                  },
                  child: Text(
                      "Proxy Provider"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


