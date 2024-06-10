import 'dart:convert';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../service/service.dart';

class RestApi extends StatefulWidget {
  final VoidCallback toggleTheme;
  const RestApi({Key? key, required this.toggleTheme}) : super(key: key);
  @override
  _RestApiState createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  void _toggleLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(Locale('tr', 'TR'));
    } else {
      context.setLocale(Locale('en', 'US'));
    }
  }

  List<Todo> list = <Todo>[];
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
        title: Text('RestApiPage'.tr()),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, position) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Text(
                list[position].id.toString(),
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            title: Text(
              list[position].title,
            ),
            subtitle: Text(list[position].completed.toString()),
          );
        },
      ),
    );
  }

  getTodos() {
    Api.getTodos().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.list = list.map((todo) => Todo.fromJson(todo)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }
}
