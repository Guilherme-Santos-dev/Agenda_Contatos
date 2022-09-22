import 'dart:js';

import 'package:agenda_contatos/screen/home/Home.dart';
import 'package:agenda_contatos/screen/home/add.contacts/add_contacts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      title: "Agenda de contatos",
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/add": (context) => addContact(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.indigo,
          secondary: Colors.blueAccent,
        ) 
      ),
    ),
  );
}

