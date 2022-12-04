import 'package:auto_route/auto_route.dart';
import '/router.gr.dart';
import 'package:flutter/material.dart';
import '../../ui/screens/user_details_screen.dart'
    as UserDetailsScreenWidget; // for widget test purposes
import '../../models/user.dart';

class UserCardWidget extends StatelessWidget {
  final User user;
  final bool useAutoRouter; // for widget test purposes

  const UserCardWidget(
      {Key? key, required this.user, this.useAutoRouter = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: useAutoRouter
          ? () => context.router.push(UserDetailsScreen(user: user))
          : () => Navigator.of(context).push(
                MaterialPageRoute(
                  // for widget test purposes
                  builder: (context) =>
                      UserDetailsScreenWidget.UserDetailsScreen(user: user),
                ),
              ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
