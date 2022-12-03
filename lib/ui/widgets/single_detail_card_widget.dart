import 'package:flutter/material.dart';

class SingleDetailCardWidget extends StatelessWidget {
  final String label, value;
  const SingleDetailCardWidget(
      {Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Text(
                    value,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
