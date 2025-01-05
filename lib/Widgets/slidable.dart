import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Slidablee extends StatefulWidget {
  const Slidablee({super.key});

  @override
  State<Slidablee> createState() => _SlidableState();
}

class _SlidableState extends State<Slidablee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                icon: Icons.call,
                foregroundColor: Colors.green,
              ),
            ],
          ),
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              onPressed: ((context) {}),
              icon: Icons.delete,
              foregroundColor: Colors.red,
            )
          ]),
          child: Container(
            color: Colors.grey,
            child: ListTile(
              title: Text("My Pricess"),
              subtitle: Text("0972285013"),
              leading: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
