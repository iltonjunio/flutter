import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaseApp',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
final _formKey = GlobalKey<FormState>();
final TextEditingController _titulocontroller = TextEditingController();
final TextEditingController _duracaocontroller = TextEditingController();
final TextEditingController _generocontroller = TextEditingController();
final TextEditingController _artistacontroller = TextEditingController();
final TextEditingController _albumcontroller = TextEditingController();
final TextEditingController _anocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BaseApp"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titulocontroller,
                    decoration: const InputDecoration(
                      labelText: "Titulo da música",
                    ),
                  ),
                   TextFormField(
                    controller: _duracaocontroller,
                    decoration: const InputDecoration(
                      labelText: "Duração da música",
                    ),
                  ),
                   TextFormField(
                    controller: _generocontroller,
                    decoration: const InputDecoration(
                      labelText: "Gênero",
                    ),
                  ),
                   TextFormField(
                    controller: _artistacontroller,
                    decoration: const InputDecoration(
                      labelText: "Artista",
                    ),
                  ),
                   TextFormField(
                    controller: _albumcontroller,
                    decoration: const InputDecoration(
                      labelText: "Álbum",
                    ),
                  ),
                   TextFormField(
                    controller: _anocontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Ano Lançamento",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) ,
        ),
      ),
    );
  }
}