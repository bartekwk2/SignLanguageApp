import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:inz/navigation/routes.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
// My IPv4 : 192.168.43.171
  final String endPoint = 'http://192.168.0.106:3000/uploadEncodedImage';
  File file;

  void _choose() async {
    file = await ImagePicker.pickImage(source: ImageSource.camera);
    // file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  void _upload2() {
    if (file == null) return;
    String image = base64Encode(file.readAsBytesSync());
    String fileName = file.path.split("/").last;
    print("Sending");
    http.post(endPoint, body: {
      "image": image,
      "name": fileName,
    }).then((res) {
      print(res.body);
      print(res.statusCode);
    }).catchError((err) {
      print(err);
    });
  }

  void _upload() async {
    if (file == null) return;
    var imageBytes = file.readAsBytesSync();
    var client = http.Client();
    var request = http.Request('POST', Uri.parse(endPoint));
    request.headers.addAll({
      HttpHeaders.authorizationHeader: 'Basic ODI0Mjc1NjU3MDk6Y2xlYW5uZXQ=',
      'Content-Type': 'image/jpeg',
      'Name': 'Bartek'
    });
    request.bodyBytes = imageBytes;
    var streamedResponse = await client.send(request).then((res) async {
      String response = await res.stream.bytesToString();
      print(response);
      print(res.statusCode);
    }).catchError((err) {
      print(err);
    });
    client.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _choose,
                child: Text('Choose Image'),
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                onPressed: _upload2,
                child: Text('Upload Image'),
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConst.classifierRoute);
                },
                child: Text('Navigate '),
              ),
            ],
          ),
          file == null ? Text('No Image Selected') : Image.file(file)
        ],
      ),
    );
  }
}
