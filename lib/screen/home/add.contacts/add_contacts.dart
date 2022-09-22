import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class addContact extends StatefulWidget {

  addContact({super.key});

  @override
  State<addContact> createState() => _addContactState();
}

class _addContactState extends State<addContact> {
  var _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar contatos"),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.save,
        ),
        ),
        body: Container (margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text("Nome do contato"),
                icon: Icon(Icons.account_box),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text("E-mail do contato"),
                icon: Icon(Icons.email),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Telefone"),
                      icon: Icon(Icons.phone),
                    ),
                  )),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Telefone"),
                      icon: Icon(Icons.phone),
                    ),
                  )),
              ],
            ),
            TextField(
              decoration:  InputDecoration(
                label:  const Text("senha de acesso"),
                icon:  const Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                icon: Icon(
                  (_isObscure) ? Icons.visibility :
                  Icons.visibility_off,
                  ),
                ),
              ), 
             obscureText: _isObscure,
            )
          ],
          ),
        ),
      );
  }
}