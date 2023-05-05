import 'package:flutter/material.dart';
import 'package:covid_stats/teste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Covid Stats APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.black,
                height: 10,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Introdução',
                textScaleFactor: 1.8,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Este é um aplicativo dedicado ao compartilhamento e organização das informações referentes a pandemia de covid-19, mostrando os dados dos principais pontos que norteiam esse tema de forma dinâmica.',
                textScaleFactor: 1.3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.black,
                height: 10,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Gráficos e Informações',
                textScaleFactor: 1.8,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            SizedBox(
              height: 320,
              width: 310,
              child: MyCustomWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CovidDashboard();
  }
}
