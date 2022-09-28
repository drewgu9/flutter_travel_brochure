import 'package:flutter/material.dart';
import 'package:second_flutter_tutorial_manning/app.dart';
import 'package:second_flutter_tutorial_manning/image_banner.dart';

import 'location.dart';
import 'tile_overlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(title: Text("Locations")),
        body: /* ListView(
            children: locations
                .map((l) => GestureDetector(
                    onTap: () => _onLocationTap(context, l.id),
                    child: Container(child: Text(l.name))))
                .toList())); */
            ListView.builder(
                itemCount: locations.length,
                itemBuilder: (context, index) =>
                    _itemBuilder(context, locations[index])));
  }

  _itemBuilder(BuildContext context, Location l) {
    return GestureDetector(
        onTap: () => _onLocationTap(context, l.id),
        child: Container(
            height: 245.0,
            child: Stack(
              children: [
                ImageBanner(assetPath: l.imagePath, height: 245.0),
                TileOverlay(l)
              ],
            )));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
}
