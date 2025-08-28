import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/pages/perfil_home.dart';
import 'package:flutter_application_1/widgets/userCard_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  final List<UserModel> users = [
    UserModel(name: "Sandra", age: 15, category: "menor de edad"),
    UserModel (name: "Pedro", age: 22, category: "mayor de edad"),
  ];

  

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  ListView _getUsers(){
    return ListView.builder(
      itemCount: users.length,
      itemBuilder:(context, index) {
        final user = users[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CardPrueba(user: user),
        );
      });
  }

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
            builder: (context) => PerfilHome()),
            );
            },
            child: const Text('Siguiente')),
           
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

