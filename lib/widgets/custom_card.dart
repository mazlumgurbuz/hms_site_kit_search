import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  String siteId;
  String name;
  String formatAddress;
  String address;
  String location;
  String viewport;
  String distance;
  String poi;
  int index;

  CustomCard(this.siteId, this.name, this.formatAddress, this.address,
      this.location, this.viewport, this.distance, this.poi, this.index);

  @override
  Widget build(BuildContext context) {
      return Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  siteId == null ? 'no siteId.' : siteId,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(
                  name == null ? 'no name.' : name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(formatAddress == null ? 'no formatAddress ' : formatAddress,
                    style: TextStyle(color: Colors.black, fontSize: 12)),
                SizedBox(height: 10.0),
                Text(address == null ? 'no address' : address,
                    style: TextStyle(color: Colors.black, fontSize: 12)),
                SizedBox(height: 5.0),
                Text(
                  location == null ? 'no location.' : location,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(
                  viewport == null ? 'no viewport.' : viewport,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(
                  location == null ? 'no location.' : location,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                SizedBox(height: 5.0),
                Text(
                  distance == null ? 'no distance.' : distance,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
                Text(
                  poi == null ? 'no poi.' : poi,
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