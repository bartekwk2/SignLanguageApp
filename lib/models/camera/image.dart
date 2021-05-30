import 'dart:typed_data';

class Image {
  final int height;
  final int width;
  final List<Uint8List> pixels;

  Image({this.height, this.width, this.pixels});
}
