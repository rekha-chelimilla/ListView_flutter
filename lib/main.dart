import 'package:flutter/material.dart';
import 'package:flutter_application_navigator/ListItemAdd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      // initialRoute: "",
      // routes: {
      //   "/": {(context) => main()},
      //   "/login": {(context) => ListitemAdd()},
      // },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Sreen')),
        body: ListLayout(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context)
            //     .pop(MaterialPageRoute(builder: (context) => ListitemAdd()));
            home:
            ListitemAdd();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

login() {}

class ListLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myEmployeeListView(context);
  }
}

//cardsa and leading
Widget _myEmployeeListView(BuildContext context) {
  final titles = ['Android', 'iOS', 'Java Script'];

  final icons = [Icons.android, Icons.ios_share, Icons.javascript_rounded];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      );
    },
  );
}
