import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

List<String> stdName=[
  "Masum",
  "Masud",
  "Jakaria",
  "Jasim",
  "Imran",
  "Bisnu",
  "Chinmoy"
];
class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List View Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The name of students of Batch-D",
            style: TextStyle(fontSize: 30,
            color: Colors.blue),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: stdName.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(stdName[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,
                    color: Colors.blue),),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
