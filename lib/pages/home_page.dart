import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/data/database.dart';
import 'package:to_do_app/models/box_model.dart';
import 'package:to_do_app/models/custom_appbar.dart';
import 'package:to_do_app/pages/dialogbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //reference of the hive
  final _myBox = Hive.box('myBox');

  @override
  void initState() {
    if (_myBox.get('tasks') == null) {
      db.initialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //textcontroller
  final _controller = TextEditingController();

  //list of values
  Database db = Database();

  //function to onChanged on checkbox
  void check(int index) {
    setState(() {
      db.tasks[index][1] = !db.tasks[index][1];
    });
    db.updateData();
  }

  //save a newTask
  void saveTask() {
    setState(() {
      db.tasks.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateData();
  }

  //create a new task
  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          save: saveTask,
          cancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.tasks.removeAt(index);
    });
    db.updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      //creating appbar
      appBar: AppBar(
        //adding custom appbar
        title: Text("I'M POSSIBLE"),
        backgroundColor: Theme.of(context).primaryColor,
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
          onPressed: createTask,
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          elevation: 30,
          splashColor: Colors.deepPurple.withOpacity(0.2),
          child: const Icon(Icons.add, color: Colors.deepPurple)),

      //creating the list titles(using containers)
      body: ListView.builder(
        itemCount: db.tasks.length,
        itemBuilder: (context, index) {
          return BoxModel(
              taskName: db.tasks[index][0],
              taskcompleted: db.tasks[index][1],
              onclicked: (value) => check(index),
              onDelete: (context) => deleteTask(index));
        },
      ),
    );
  }
}
/* Stack(
            children: [
              Text(
                "IM'POSSIBLE",
                style: GoogleFonts.poppins(
                    //color: Colors.white,
                    fontWeight: FontWeight.w600,
                    foreground: Paint()
                      ..color = Colors.grey.shade500
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4,
                    letterSpacing: 3),
              ),
              Text("IM'POSSIBLE",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3,
                  ))
            ],
          ),*/
