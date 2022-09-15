import 'dart:html';

import 'package:agenda_contatos/model/Contact.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Contact contact;
  Details({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          contact.name,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              contact.photo,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(contact.name,
                  style: Theme.of(context).textTheme.headline4,),
                  Text(contact.phone,
                  style: Theme.of(context).textTheme.subtitle1,),

              
                ],
              ), 
            )
          ],
        ),
      ),
    );
  }
}
