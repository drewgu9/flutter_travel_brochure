import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _header;
  final String _filling;
  static const double _hPad = 16.0;

  TextSection(this._header, this._filling);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
              child:
                  Text(_header, style: Theme.of(context).textTheme.headline1)),
          ClipRect(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
                  child: Text(_filling,
                      style: Theme.of(context).textTheme.bodyText2)))
        ]);
  }
}

//                   style: Theme.of(context).textTheme.bodyText1
