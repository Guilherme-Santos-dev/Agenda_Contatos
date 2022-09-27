import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class addContact extends StatefulWidget {
  addContact({Key? key}) : super(key: key);

  @override
  State<addContact> createState() => _addContactState();
}

class _addContactState extends State<addContact> {
  var _isObscure = true;
  final _formKey = GlobalKey<FormState>();

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final phoneController = MaskedTextController(mask: "(00) 0000-0000");
  final celPhone = MaskedTextController(mask: "(00) 00000-0000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo contato"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            print("TA OK ");
          }
        },
        child: Icon(
          Icons.save,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nomeController,
                validator: (text) => (text == null || text.length < 3)
                    ? "Ta errado merda"
                    : null,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text("Nome do contato"),
                  icon: Icon(Icons.account_box),
                ),
              ),
              TextFormField(
                controller: emailController,
                validator: (text) =>
                    (text == null || !EmailValidator.validate(text)
                        ? "O email ta errado o merda"
                        : null),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email"),
                  icon: Icon(Icons.email),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    controller: phoneController,
                    validator: (text) => (text == null || text.length != 14)
                        ? "Numero de telefone errado"
                        : null,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Telefone"),
                      icon: Icon(Icons.call),
                    ),
                  )),
                  Expanded(
                      child: TextFormField(
                    controller: celPhone,
                    validator: (text) => (text == null || text.length != 15)
                        ? "numero de celular errado"
                        : null,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Celular"),
                      icon: Icon(Icons.call),
                    ),
                  )),
                ],
              ),
              TextFormField(
                validator: (text) => (text == null || text.length < 8)
                    ? "Minimo 8 caracteres"
                    : null,
                decoration: InputDecoration(
                    label: Text("Senha de acesso"),
                    icon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        (_isObscure) ? Icons.visibility : Icons.visibility_off,
                      ),
                    )),
                obscureText: _isObscure,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
