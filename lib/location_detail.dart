import 'package:flutter/material.dart';
import 'package:second_flutter_tutorial_manning/models/location.dart';

import "image_banner.dart";
import 'models/location.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final Location firstLocation = Location.fetchById(_locationId) as Location;

    return Scaffold(
        appBar: AppBar(title: Text(firstLocation.name)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(assetPath: firstLocation.imagePath, height: 200.0)
            ]..addAll(textSections(firstLocation))
            /*ImageBanner("assets/images/kiyomizu-dera.jpeg"),
            TextSection("hi",
                "nersaddksjlsjlkjlkjdsfjdssdj;fdjskfdjsdfdsjflkdsjldsjfdsfdsdd"),
            TextSection("hello", "ldflsjdlkfdjfklwdmlkmnklvfwmvonkldvmkvol"),
            TextSection("hdfjsdlkflekwmclkoewmclki", "bofdsdfklsdflsdmlewop3") */

            ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
