import 'package:flutter/material.dart';
import 'package:hms_site_kit_search/models/coordinate.dart';
import 'package:hms_site_kit_search/models/keyword_search_request.dart';
import 'package:hms_site_kit_search/models/keyword_search_response.dart';
import 'package:hms_site_kit_search/models/site.dart';
import '../util.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TextSearchScreen extends StatefulWidget {
  static const String id = 'text_search_screen';

  @override
  _TextSearchScreenState createState() => _TextSearchScreenState();
}

class _TextSearchScreenState extends State<TextSearchScreen> {
  List<Site> sites = [];

  final TextEditingController queryTextController =
      TextEditingController(text: "hotel");
  final TextEditingController languageTextController =
      TextEditingController(text: "en");
  final TextEditingController countryTextController =
      TextEditingController(text: "FR");
  final TextEditingController latTextController =
      TextEditingController(text: "50.6721");
  final TextEditingController lngTextController =
      TextEditingController(text: "3.2416");
  final TextEditingController radiusTextController =
      TextEditingController(text: "500");
  final TextEditingController pageIndexTextController =
      TextEditingController(text: "1");
  final TextEditingController pageSizeTextController =
      TextEditingController(text: "1");

  @override
  void initState() {
    super.initState();
  }

  void runSearch() async {
      KeywordRequest request =  KeywordRequest(
          query: queryTextController.text.toString()
      );
      request.query = queryTextController.text;
      request.location = Coordinate(
        lat: double.parse(latTextController.text),
        lng: double.parse(lngTextController.text),
      );
      request.language = languageTextController.text;
      request.countryCode = countryTextController.text;
      request.pageIndex = int.parse(pageIndexTextController.text);
      request.pageSize = int.parse(pageSizeTextController.text);
      request.radius = int.parse(radiusTextController.text);
      request.politicalView = "IN";
      String url =
          'https://siteapi.cloud.huawei.com/mapApi/v1/siteService/searchByText?key=';
      print(json.encode(request.toJson()));
      var res = await http.post(url + API_KEY,
          headers: {
            'Content-Type': 'application/json; charset=utf-8',
          },
          body: json.encode(request.toJson()));
      KeywordResponse response =
          KeywordResponse.fromJson(json.decode(utf8.decode(res.bodyBytes)));
      setState(() {
        sites = response.sites;
        sites.sort((a, b) => a.distance.compareTo(b.distance));
      });
    }
  @override
  void dispose() {
    queryTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Text Search'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomText(
            labelText: "Query Text",
            controller: queryTextController,
          ),
          CustomText(
            labelText: "Language",
            controller: languageTextController,
          ),
          CustomText(
            labelText: "Latitude",
            controller: latTextController,
          ),
          CustomText(
            labelText: "Longitude",
            controller: lngTextController,
          ),
          CustomText(
            labelText: "Radius",
            controller: radiusTextController,
          ),
          CustomText(
            labelText: "PageIndex",
            controller: pageIndexTextController,
          ),
          CustomText(
            labelText: "PageSize",
            controller: pageSizeTextController,
          ),
          CustomButton(
            text: "Search",
            onPressed: () {
              runSearch();
            },
          ),

            sites.length==0?Text('No results'):ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: sites.length,
              itemBuilder: (context, index) {
                return CustomCard(sites[index].name, sites[index].poi.phone,
                    sites[index].formatAddress, index,sites[index].siteId);
              },
            ),
        ]),
      ),
    );
  }

  Widget CustomCard(
      String name, String phoneNumber, String address, int index,String siteId) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                name == null ? 'no name.' : name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.0),
              Text(phoneNumber == null ? 'no number' : phoneNumber,
                  style: TextStyle(color: Colors.black, fontSize: 12)),
              SizedBox(height: 10.0),
              Text(siteId == null ? 'no id' : siteId,
                  style: TextStyle(color: Colors.black, fontSize: 12)),
              SizedBox(height: 5.0),
              Text(
                address == null ? 'no adress.' : address,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
