import 'package:sufering_and_despering/model/accountModel.dart';
import 'package:sufering_and_despering/model/DAO/account_dao.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:sufering_and_despering/screens/settings/components/custom_textformdfield.dart';
class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => NewAccountState();
}

class NewAccountState extends State<NewAccount> {
  var nameController = TextEditingController();
  var cpfController = MaskedTextController(mask: "000.000.000-00");
  var emailController = TextEditingController();
  var phoneController =
      MaskedTextController(mask: "+00 000 00000-0000", text: "+55 ");
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo usuario"),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var account = Account(
              name: nameController.text,
              cpf: cpfController.text,
              phone: phoneController.text,
              email: emailController.text,
            );
            int result = await AccountDAO.insert(account.toMap());

            
            
            SnackBar snack;
            if (result != 0) {
              snack = const SnackBar(
                content: Text("Usuario cadastrado com sucesso!!!"),
                backgroundColor: Colors.green,
              );
            } else {
              snack = const SnackBar(
                content: Text("Não foi possível cadastrar o usuario!!!"),
                backgroundColor: Colors.orange,
              );
            }
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(snack);
          }
        },
        child: const Icon(Icons.save),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  label: "Nome",
                  controller: nameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O nome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "cpf",
                  controller: cpfController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O campo de cpf não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Email",
                  controller: emailController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O email não pode ficar em branco";
                    } else if (value != null &&
                        EmailValidator.validate(value)) {
                      return "O email informado é inválido";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  label: "Telefone",
                  controller: phoneController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O número de telefone não pode ficar em branco";
                    } else if (value != null && value.length != 18) {
                      return "O número de telefone é inválido";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}