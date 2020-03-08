import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Assets
import 'package:Tether/global/assets.dart';

class SecondSection extends StatelessWidget {
  SecondSection({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final widthScale = width * 0.825;

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: widthScale,
          constraints: BoxConstraints(
            maxHeight: 256,
            maxWidth: 320,
          ),
          child: SvgPicture.asset(
            CONNECTION_GRAPHIC,
            semanticsLabel: 'Two people messaging privately but leisurely',
          ),
        ),
        Container(
          height: 88,
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Matrix enables you to message others',
                  style: Theme.of(context).textTheme.subtitle2,
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nprivately ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'and control where the\nmessages are ',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    TextSpan(
                      text: 'stored',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
