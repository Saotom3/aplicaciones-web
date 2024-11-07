import 'package:flutter/material.dart';
import '../utils/calculations.dart';

class AreaScreen extends StatefulWidget {
  final String shape;
  AreaScreen({required this.shape});

  @override
  _AreaScreenState createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  final _inputController1 = TextEditingController();
  final _inputController2 = TextEditingController();
  double? area;

  void _calculateArea() {
    double value1 = double.tryParse(_inputController1.text) ?? 0;
    double value2 = double.tryParse(_inputController2.text) ?? 0;

    setState(() {
      switch (widget.shape) {
        case 'Círculo':
          area = calculateCircleArea(value1);
          break;
        case 'Cuadrado':
          area = calculateSquareArea(value1);
          break;
        case 'Rectángulo':
          area = calculateRectangleArea(value1, value2);
          break;
        case 'Triángulo':
          area = calculateTriangleArea(value1, value2);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Área de ${widget.shape}')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _inputController1,
              decoration: InputDecoration(
                labelText: widget.shape == 'Círculo' ? 'Radio' : 'Lado 1',
              ),
              keyboardType: TextInputType.number,
            ),
            if (widget.shape == 'Rectángulo' || widget.shape == 'Triángulo')
              TextField(
                controller: _inputController2,
                decoration: InputDecoration(labelText: 'Lado 2'),
                keyboardType: TextInputType.number,
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calcular Área'),
            ),
            if (area != null)
              Text('Área: $area', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
