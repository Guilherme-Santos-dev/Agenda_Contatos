import 'package:agenda_contatos/model/list_of_contacts.dart';
import 'package:agenda_contatos/screen/home/components/item_lista.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Meus contatos"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: contact.length,
          itemBuilder: (_, index) {
            return ItemList(
              contact: contact[index],
            );
          },
          separatorBuilder: (_, index) {
            return const Divider();
          },
          ),
        ),
      ); 
  }
}