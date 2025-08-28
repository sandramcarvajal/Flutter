import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/widgets/userCard_widgets.dart';

class PerfilHome extends StatelessWidget {
   PerfilHome({super.key});

  UserModel user = UserModel(name: "Sandra", age: 15, category: "menor de edad");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile page'),
        ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: CardPrueba(user: user)
            )
            ),
      )
          );
  }
}