import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  
  var listNama = [
    'Rizma Sabillah', 'Muhamad Abdi Hafidz', 'Juwita Kristiani Hia', 'Uswatus Sangadah',
    'Siti Nur Fajar Utami'
    ];
    var listWarna = [
      Colors.indigo, Colors.purple, Colors.teal, Colors.lime,
      Colors.red, Colors.deepPurple, Colors.cyan,
      Colors.blue, Colors.yellow
      ];
      int index = 0;
  
  void incrementIndex () {
    setState(() {
      index++;
      });
      }
      
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Apa Kabar",
          textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]
              ),
              )
              ],
              );
              }
              }

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();
  
  @override
  State<StatefulWidget> createState() => state;
  }
  void main() {
    TeksUtama teksUtama = TeksUtama();
    runApp(
      MaterialApp(
        title: 'Halo Dunia',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Halo Dunia'),
            ),
            body: Center(
              child: teksUtama,
              ),
              floatingActionButton: FloatingActionButton(
                tooltip: 'Refresh',
                child: Icon(Icons.refresh),
                  onPressed: teksUtama.state.incrementIndex,
                  ),
                  )
                  )
                  );
                  }