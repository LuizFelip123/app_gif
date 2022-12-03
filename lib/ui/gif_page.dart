import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class GifPage extends StatelessWidget {
  final Map<dynamic, dynamic> _gitData;
  GifPage(this._gitData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gitData['title']),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
            FlutterShare.share(title: 'Compartilhar url', text: _gitData['images']['fixed_height']['url'] );
            },
            icon: Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gitData['images']['fixed_height']['url']),
      ),
    );
  }
}
