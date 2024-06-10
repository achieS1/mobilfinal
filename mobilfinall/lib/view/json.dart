import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Json extends StatefulWidget {
  final VoidCallback toggleTheme;
  const Json({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  _JsonState createState() => _JsonState();
}

class _JsonState extends State<Json> {
  void _toggleLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('tr', 'TR'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }

  List? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: widget.toggleTheme,
              icon: const Icon(Icons.brightness_6_outlined),
            ),
            IconButton(
              onPressed: _toggleLanguage,
              icon: Icon(Icons.language),
            ),
          ],
          title: Text('JsonPage'.tr()),
        ),
        body: Container(
          child: Center(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/json/data.json"),
              builder: (context, snapshot) {
                var mydata = jsonDecode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card.outlined(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index]["name"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index]["age"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index]["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card.outlined(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 1]
                                          ["name"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 1]["age"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 1]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card.outlined(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Name: " +
                                      mydata["file_reading"][index + 2]
                                          ["name"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Age: " +
                                      mydata["file_reading"][index + 2]["age"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Teams: " +
                                      mydata["file_reading"][index + 2]
                                          ["teams"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: mydata == null ? 0 : mydata.length,
                );
              },
            ),
          ),
        ));
  }
}
