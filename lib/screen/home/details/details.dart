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
              padding: const EdgeInsets.all(
                16,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact.name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        action(
                          icon: Icons.call,
                          text: "Ligar",
                        ),
                        action(
                          icon: Icons.message_outlined,
                          text: "Mensagem SMS",
                        ),
                        action(
                          icon: Icons.videocam,
                          text: "Video",
                        ),
                        action(
                          icon: Icons.mail_outline,
                          text: "Enviar email",
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.call),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(contact.phone),
                                const Text("Celular"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.videocam),
                            Icon(Icons.message_outlined)
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Icon(Icons.email_outlined),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(contact.phone),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column action({
    required IconData icon,
    required String text,
  }) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}