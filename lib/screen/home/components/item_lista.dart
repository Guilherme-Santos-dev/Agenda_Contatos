 import 'package:agenda_contatos/model/Contact.dart';
import 'package:agenda_contatos/screen/home/details/details.dart';
import 'package:flutter/material.dart';


class ItemList extends StatelessWidget {
  Contact contact; 
  ItemList({super.key,
  required this.contact});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundColor: Colors.blue,
            child: Text(contact.name.substring(0,1)),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contact.name),
                Text(contact.phone),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: (){
            Navigator.push(
              context,
             MaterialPageRoute
             (builder: (_) => Details(
              contact: contact,
             ),
            ),
            );
          },
          icon: Icon(
            Icons.chevron_right
          ),
        ),
      ],
    );
  }
}