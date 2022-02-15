import 'package:flutter/material.dart';
import 'package:reorderable_listview_flutter/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [
    User(
        name: 'John',
        urlImage:
            'https://images.unsplash.com/photo-1524666041070-9d87656c25bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Carlo',
        urlImage:
            'https://images.unsplash.com/photo-1496869836330-cd25f013c377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Jimmy',
        urlImage:
            'https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Wick',
        urlImage:
            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Rohsan',
        urlImage:
            'https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Mike',
        urlImage:
            'https://images.unsplash.com/photo-1525457136159-8878648a7ad0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Tony',
        urlImage:
            'https://images.unsplash.com/photo-1514794749374-fb67509dbb7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Joseph',
        urlImage:
            'https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Malven',
        urlImage:
            'https://images.unsplash.com/photo-1520785643438-5bf77931f493?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Harry',
        urlImage:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'John cenna',
        urlImage:
            'https://images.unsplash.com/photo-1517530094915-500495b15ade?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Albert',
        urlImage:
            'https://images.unsplash.com/photo-1514461713809-b245d3816ff1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Ronny',
        urlImage:
            'https://images.unsplash.com/photo-1586188389405-bd05314a47ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'TailerSwift',
        urlImage:
            'https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
    User(
        name: 'Nethandera',
        urlImage:
            'https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ReorderableListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return buildUser(index, user);
          },
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
              final user = users.removeAt(oldIndex);
              users.insert(index, user);
            });
          },
        ));
  }

  Widget buildUser(int index, User user) {
    return ListTile(
      key: ValueKey(user),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.urlImage),
      ),
      title: Text(user.name),
      subtitle: const Text('Hi this is the last message'),
    );
  }
}
