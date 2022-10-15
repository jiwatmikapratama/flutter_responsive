import 'package:flutter/material.dart';

class ImageCaption extends StatelessWidget {
  String linkimage;
  String caption;
  double imageWidth;
  double imageHeight;
  ImageCaption(this.linkimage, this.caption, this.imageWidth, this.imageHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                linkimage,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              caption,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCaptionBig extends StatelessWidget {
  String linkimage;
  String caption;
  double imageWidth;
  double imageHeight;
  ImageCaptionBig(
      this.linkimage, this.caption, this.imageWidth, this.imageHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
              linkimage,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                caption,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class socialMedia extends StatelessWidget {
  var icons;
  String desc;
  socialMedia(this.icons, this.desc);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons),
        Text(
          desc,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
