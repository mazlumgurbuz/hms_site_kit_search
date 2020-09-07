import 'package:flutter/material.dart';
import 'package:hms_site_kit_search/models/place_detail_search_request.dart';
import 'package:hms_site_kit_search/models/place_detail_search_response.dart';
import 'package:hms_site_kit_search/models/site.dart';
import 'package:hms_site_kit_search/widgets/custom_card.dart';
import '../util.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailSearchScreen extends StatefulWidget {
  static const String id = 'detail_search';

  @override
  _DetailSearchScreenState createState() => _DetailSearchScreenState();
}

class _DetailSearchScreenState extends State<DetailSearchScreen> {
  Site sites;

  final TextEditingController siteIdTextController =
      TextEditingController(text: "F45411D2CC51C59156364492A8D13622");
  final TextEditingController languageTextController =
      TextEditingController(text: "zh_CN");
  final TextEditingController politicalViewTextController =
      TextEditingController(text: "CN");

  @override
  void initState() {
    super.initState();
  }

  bool check = false;

  void runSearch() async {
    try {
      DetailSearchRequest request = DetailSearchRequest(
        siteId: siteIdTextController.text.toString(),
        language: languageTextController.text,
        politicalView: politicalViewTextController.text,
      );
      request.siteId = siteIdTextController.text;
      request.language = languageTextController.text;
      request.politicalView = politicalViewTextController.text;
      String url =
          'https://siteapi.cloud.huawei.com/mapApi/v1/siteService/searchById?key=';
      print(json.encode(request.toJson()));
      var res = await http.post(url + API_KEY,
          headers: {
            'Content-Type': 'application/json; charset=utf-8',
          },
          body: json.encode(request.toJson()));
      DetailSearchResponse response = DetailSearchResponse.fromJson(
          json.decode(utf8.decode(res.bodyBytes)));
      setState(() {
        sites = response.sites;
        check = true;
      });
    } catch (e) {
      print("hata==========>$e");
    }
  }

  @override
  void dispose() {
    siteIdTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Detail Search'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomText(
            labelText: "SiteId Text",
            controller: siteIdTextController,
          ),
          CustomText(
            labelText: "Language",
            controller: languageTextController,
          ),
          CustomText(
            labelText: "Political View",
            controller: politicalViewTextController,
          ),
          CustomButton(
            text: "Search",
            onPressed: () {
              runSearch();
            },
          ),
          check == true
              ?  CustomCard(sites.siteId,sites.name,
                  sites.formatAddress,sites.address.countryCode,
                  sites.location.toString(),sites.viewport.toString(),
                  sites.distance.toString(),sites.poi.toString(),
                  1,)
              : SizedBox.shrink(),
        ]),
      ),
    );
  }
}
