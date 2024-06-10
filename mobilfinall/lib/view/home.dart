import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  final VoidCallback toggleTheme;

  const Home({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _toggleLanguage() {
    if (context.locale == Locale('en', 'US')) {
      context.setLocale(const Locale('tr', 'TR'));
    } else {
      context.setLocale(const Locale('en', 'US'));
    }
  }

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
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {
              exit(0);
            },
            icon: const Icon(Icons.close_outlined),
          ),
        ],
        title: Text('HomePage'.tr()),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Card(
                child:
                    Image.asset('assets/image/porsche2.jpg', fit: BoxFit.fill),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              child: const Center(
                child: Text(
                  "Porsche 911 GT3RS"
                  "\n              2024 ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
