import 'package:flutter/material.dart';

import 'app_screens/Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI elements",
//      home: Scaffold(
//        body: getListView(),
//      ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add One More Item",
      ),
    ),
  ));
}

// SnackBar

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(content: Text("Clicked $item"),
  action: SnackBarAction(label: "UNDO", onPressed: (){
    debugPrint("You just pressed UNDO");
  }), duration: Duration(milliseconds: 2000),);

  Scaffold.of(context).showSnackBar(snackBar);
}




List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          showSnackBar(context, listItems[index]);
        });
  });

  return listView;
}

//Widget getListView(){
//
//  var listView = ListView(
//    children: <Widget>[
//      ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful View!"),
//        trailing: Icon(Icons.wb_sunny),
//        onTap: () => debugPrint("Landscape Tapped"),
//      ),
//      ListTile(
//        leading: Icon(Icons.laptop_chromebook),
//        title: Text("Windows"),
//      ),
//      ListTile(
//        leading: Icon(Icons.phone),
//        title: Text("Phone"),
//      )
//    ],
//  );
//
//  return listView;
//}
