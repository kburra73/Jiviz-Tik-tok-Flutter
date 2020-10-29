import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_ui/pages/root_app.dart';

List<CameraDescription> cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    //logError(e.code, e.description);
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RootApp(),
  ));
}
