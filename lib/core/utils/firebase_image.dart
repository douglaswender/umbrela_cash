import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirebaseImage extends StatelessWidget {
  final String path;

  FirebaseImage(this.path, {Key? key}) : super(key: key) {
    downloadURL(path);
  }

  Future<String> downloadURL(String path) async {
    String downloadURL =
        await FirebaseStorage.instance.ref('img').child(path).getDownloadURL();

    debugPrint(downloadURL);

    return downloadURL;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: downloadURL(path),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return Image.network(snapshot.data as String);
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
