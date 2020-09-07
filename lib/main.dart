import 'package:flutter/material.dart';
import 'package:hms_site_kit_search/screens/detail_search_screen.dart';
import 'package:hms_site_kit_search/screens/querysuggestion_search_screen.dart';
import 'screens/home_screen.dart';
import 'screens/nearby_search_screen.dart';
import 'screens/keyword_search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        TextSearchScreen.id: (context) => TextSearchScreen(),
        NearbySearchScreen.id: (context) => NearbySearchScreen(),
        DetailSearchScreen.id: (context) => DetailSearchScreen(),
        QuerySuggestionSearchScreen.id: (context) => QuerySuggestionSearchScreen(),
      },
    );
  }
}
