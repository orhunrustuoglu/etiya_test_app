import 'package:etiya_test_app/models/address.dart';
import 'package:etiya_test_app/models/company.dart';
import 'package:etiya_test_app/models/geo.dart';
import 'package:etiya_test_app/models/user.dart';
import 'package:etiya_test_app/ui/widgets/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Navigate to user details.', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: SizedBox(
          width: 200,
          height: 100,
          child: UserCardWidget(
            useAutoRouter: false,
            user: User(
                id: 1,
                name: "Leanne Graham",
                userName: "Bret",
                email: "Sincere@april.biz",
                phone: "1-770-736-8031 x56442",
                website: "hildegard.org",
                address: Address(
                    street: "Kulas Light",
                    suite: "Apt. 556",
                    city: "Gwenborough",
                    zipcode: "92998-3874",
                    geo: Geo(lat: "-37.3159", lng: "81.1496")),
                company: Company(
                    name: "Romaguera-Crona",
                    catchPhrase: "Multi-layered client-server neural-net",
                    bs: "harness real-time e-markets")),
          ),
        ),
      ),
    ));
    await tester.pumpAndSettle(); // wait for the render

    final userCard = find.text("Leanne Graham",
        skipOffstage: false); // find the user card with the user name "Bret"
    await tester.tap(userCard); // navigate to the user details screen
    await tester.pumpAndSettle(); // wait for the navigation to end
    expect(find.text("hildegard.org"),
        findsOneWidget); // check if the details screen is navigated to
  });
}
