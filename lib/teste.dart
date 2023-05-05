import 'package:flutter/material.dart';

class CovidDashboard extends StatefulWidget {
  @override
  _CovidDashboardState createState() => _CovidDashboardState();
}

class _CovidDashboardState extends State<CovidDashboard> {
  int _totalCases = 0;
  int _totalDeaths = 0;
  int _totalRecovered = 0;

  @override
  void initState() {
    super.initState();
    // Aqui você pode adicionar a lógica para buscar os dados do COVID-19 de uma API ou de outra fonte de dados.
    // Por motivos de simplicidade, vamos apenas definir valores fictícios aqui.
    _totalCases = 150000;
    _totalDeaths = 2000;
    _totalRecovered = 100000;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COVID-19 Dashboard'),
      ),
      body: SizedBox(
        height: 500,
        child: Container(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    _buildCard('Total Cases', _totalCases, Colors.blue),
                    _buildCard('Total Deaths', _totalDeaths, Colors.red),
                  ],
                ),
              ),
              Expanded(
                child: _buildCard(
                    'Total Recovered', _totalRecovered, Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, int value, Color color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(fontSize: 15.0)),
              const SizedBox(height: 10.0),
              Text(value.toString(),
                  style: TextStyle(fontSize: 25.0, color: color)),
            ],
          ),
        ),
      ),
    );
  }
}
