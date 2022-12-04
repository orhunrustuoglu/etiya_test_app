import 'package:etiya_test_app/ui/widgets/single_detail_card_widget.dart';

import '/models/user.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;
  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SingleDetailCardWidget(label: "User Id: ", value: user.id.toString()),
          SingleDetailCardWidget(label: "Name: ", value: user.name),
          SingleDetailCardWidget(label: "Email: ", value: user.email),
          SingleDetailCardWidget(label: "Phone: ", value: user.phone),
          SingleDetailCardWidget(label: "Website: ", value: user.website),
          SingleDetailCardWidget(
              label: "Company: ",
              value:
                  "${user.company.name}\n${user.company.catchPhrase}\n${user.company.bs}"),
          SingleDetailCardWidget(
              label: "Address: ",
              value:
                  "${user.address.street}\n${user.address.suite}\n${user.address.city}\n${user.address.street}\n${user.address.zipcode}\n${user.address.geo.lat}, ${user.address.geo.lng}"),
        ],
      )),
    );
  }
}
