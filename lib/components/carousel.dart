import 'package:TheJenos/components/number_counter.dart';
import 'package:TheJenos/utils/static_values.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  Carousel({Key key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context);
  }

  Widget _buildCarousel(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Best records of week', style: headline6(context)),
        ),
        SizedBox(
          height: 300,
          child: PageView.builder(
            itemCount: 5,
            controller: PageController(viewportFraction: 0.5),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://web2.hirez.com/paladins/champion-icons/cassie.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            primaryDarkColor.withOpacity(0.4),
                            primaryDarkColor.withOpacity(0.8),
                          ]),
                    ),
                  ),
                ),
                Positioned.fill(
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Best Flaker", style: headline6(context)),
                            Icon(Icons.cake, color: Colors.white, size: 120),
                            NumberCounter(count: 1000, style: headline3(context)),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
