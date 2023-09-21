import 'package:flutter/material.dart';

Future<void> errorDialog(BuildContext context, String message, String title) {
  return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
            title: Text(title),
            children: [
              Text(
                message,
                style: const TextStyle(color: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK"))
            ],
          ));
}
