import 'package:agenda_contatos/screen/home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      title: "Agenda de contatos",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.grey,
          secondary: Colors.amber,
        ) 
      ),
    ),
  );
}

