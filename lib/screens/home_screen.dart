import 'package:flutter/material.dart';
import 'package:hms_site_kit_search/screens/detail_search_screen.dart';
import 'package:hms_site_kit_search/screens/querysuggestion_search_screen.dart';
import '../widgets/custom_button.dart';
import 'nearby_search_screen.dart';
import 'keyword_search_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HMS Site Kit '),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomButton(
              text: "Keyword Search",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  TextSearchScreen.id,
                );
              },
            ),
            CustomButton(
              text: "Nearby Search",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  NearbySearchScreen.id,
                );
              },
            ),
            CustomButton(
              text: "Detail Search",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  DetailSearchScreen.id,
                );
              },
            ),
            CustomButton(
              text: "Query Suggestion Search",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  QuerySuggestionSearchScreen.id,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
