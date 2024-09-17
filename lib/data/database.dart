import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List tasks = [];

  //onemore reference for the box
  final _myBox = Hive.box('myBox');

  //if this is the first time of opening
  void initialData() {
    tasks = [
      ["Build apps", false],
      ["Do calisthenics", false]
    ];
  }

  //to load data from the database
  void loadData() {
    tasks = _myBox.get('tasks');
  }

  //to update the current data to the database
  void updateData() {
    _myBox.put(tasks.toString(), 'tasks');
  }
}
