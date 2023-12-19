// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';

Future image(String url) async {
  // Add your function code here!
  String path = url;
  String albumName = 'Insurance';
  GallerySaver.saveImage(path, albumName: albumName);
}
