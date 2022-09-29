import 'package:flutter/material.dart';

import '../style.dart';
import 'location.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  LocationTile({required this.location, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location.name.toUpperCase(),
              key: Key('location_tile_name_${location.id}'),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: textColor),
              // key: Key('location_tile_name_${location.id}')
            ),
            Text(
              location.userItinerarySummary.toUpperCase(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              location.tourPackageName.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: textColor),
            ),
          ]),
    );
  }
}
