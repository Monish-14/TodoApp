import 'package:flutter/material.dart';
import 'package:to_do_app/models/buttons.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback save;
  final VoidCallback cancel;
  const DialogBox({
    super.key,
    required this.controller,
    required this.save,
    required this.cancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      content: Container(
          padding: const EdgeInsets.all(12),
          height: 130,
          child: Column(
            children: [
              //textfield
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new Challenge",
                    fillColor: Colors.white,
                    filled: true),
              ),

              const SizedBox(
                height: 20,
              ),
              //buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Buttons(
                    buttonColor: Colors.green,
                    buttonName: "Save",
                    onClicked: save,
                  ),
                  const SizedBox(width: 10),
                  Buttons(
                    buttonColor: Colors.red,
                    buttonName: "Cancel",
                    onClicked: cancel,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
