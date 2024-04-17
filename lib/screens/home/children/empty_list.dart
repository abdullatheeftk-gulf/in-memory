import 'package:flutter/material.dart';

class EmmptyList extends StatelessWidget {
  const EmmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.hourglass_empty_outlined,
            size: 100,
            color: Colors.black.withAlpha(75),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Empty List",
            style: TextStyle(color: Colors.black.withAlpha(75)),
          )
        ],
      ),
    );
  }
}
