// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxModel extends StatelessWidget {
  //getting TaskName
  final String taskName;
  final bool taskcompleted;
  Function(bool?)? onclicked;
  Function(BuildContext)? onDelete;

  BoxModel(
      {super.key,
      required this.taskName,
      required this.taskcompleted,
      required this.onclicked,
      required this.onDelete});

  //creating a box like container for tasks
  @override
  Widget build(BuildContext context) {
    //Creating box
    return Padding(
      //padding for all
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),

      //content that arise while sliding
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: onDelete,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
            )
          ],
        ),
        child: Container(
          //adjusting the inside and outside padding
          //margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
          padding: const EdgeInsets.only(top: 4, left: 40, right: 20),
          height: 60,
          width: double.infinity,

          //adding shadows and colors
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColorDark,
                offset: const Offset(4.0, 4.0),
                blurRadius: 5.8,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                offset: const Offset(-4.0, -4.0),
                blurRadius: 5.8,
                spreadRadius: 1.0,
              )
            ],
          ),

          //adding checkbox
          child: Row(
            children: [
              //checkbox
              Checkbox(
                value: taskcompleted,
                onChanged: onclicked,
              ),
              const SizedBox(width: 10),

              //taskname
              Text(
                taskName,
                style: GoogleFonts.poppins(
                    decoration: taskcompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
