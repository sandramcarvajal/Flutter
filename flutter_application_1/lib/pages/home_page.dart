import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

import 'perfil_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> users = [
    UserModel(name: "Emma Garcia", age: 17, category: "menor de edad", image:"https://randomuser.me/api/portraits/women/65.jpg", email: "emma@gmail.com",
      phone: "3001234567", address: "Cali, Colombia", bio: "Estudiante apasionada por la música y la lectura."),
    UserModel (name: "David Pardo", age: 36, category: "mayor de edad", image:"https://randomuser.me/api/portraits/men/32.jpg", email: "pedro@gmail.com",
      phone: "3109876543", address: "Bogotá, Colombia", bio: "Ingeniero civil con interés en deportes extremos."),
    UserModel (name: "Gabriel Fernandez", age: 30, category: "mayor de edad", image:"https://randomuser.me/api/portraits/men/45.jpg", email: "gabriel@gmail.com",
      phone: "3151112233", address: "Medellín, Colombia", bio: "Diseñador gráfico que ama el arte digital y la fotografía."),
    UserModel (name: "Isabella Palacios", age: 22, category: "mayor de edad", image:"https://randomuser.me/api/portraits/women/44.jpg", email: "isabella@gmail.com",
      phone: "3174455667", address: "Barranquilla, Colombia", bio: "Desarrolladora de software y entusiasta del yoga."),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        child: 
          ElevatedButton(
            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => PerfilHome(user: users[0])),
            );
            },
            child: const Text('perfil')),
           
      ),
    );
  }
}