import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [
    ["Hi,", false],
    ["My name is Fahim Saki", false],
    ["Write what you wish to write here 🥳", false],
  ];

  // reference the hive box
  final _myBox = Hive.box('mybox');

  // run this method on first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Hi,", false],
      ["My name is Fahim Saki", false],
      ["Write what you wish to write here 🥳", false],
    ];
  }

  // load data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
