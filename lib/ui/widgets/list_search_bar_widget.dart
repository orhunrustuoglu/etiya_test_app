import 'package:flutter/material.dart';

class ListSearchBarWidget extends StatelessWidget {
  const ListSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        onSubmitted: (query) {
          //TODO filter list items from bloc
        },
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.secondary)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    const BorderSide(width: 2, color: Color(0xffE0E0E0))),
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.black26, fontSize: 16),
            prefixIcon: Container(
              padding: const EdgeInsets.all(15),
              width: 18,
              child: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.primary,
              ),
            )),
      ),
    );
  }
}
