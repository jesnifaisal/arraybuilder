import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Array and listview builder"),
      ),
      body: ListView.builder(
        itemCount: addlist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink[200],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addlist[index].name,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            addlist[index].number.toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  List<listadd> addlist = [
    listadd(name: "Riya", number: 34526789),
    listadd(name: "Mariyam", number: 560986432),
    listadd(name: "Shiyas", number: 97755200),
    listadd(name: "Miya", number: 642905322),
    listadd(name: "Jubair", number: 785311890),
    listadd(name: "Faisal", number: 762315689),
  ];
}

class listadd {
  String name;
  int number;
  listadd({required this.name, required this.number});
}
