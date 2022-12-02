import 'package:flutter/material.dart';

import '../../models/user.dart';

class UserCardWidget extends StatelessWidget {
  final User user;
  const UserCardWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: () => {
          //TODO navigate
        },
        child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(user.userName),
                  Expanded(
                    child: Text(
                      user.name,
                      textAlign: TextAlign.right,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14,
                    color: Colors.grey,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
