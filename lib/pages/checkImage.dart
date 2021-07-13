import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'dart:io';

class CheckImage extends StatefulWidget {
  @override
  _CheckImageState createState() => _CheckImageState();
}

class _CheckImageState extends State<CheckImage> {
  File pickedImage;
  bool isImageLoaded = false;
  List _result;
  String _name = "";
  String _confidence = "";

  getImageFromCamera() async {
    var tempStore = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = File(tempStore != null ? tempStore.path : "");
      isImageLoaded = true;
    });
    await applyModelOnImage(pickedImage);
  }

  loadMyModel() async {
    var reslt = await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
    print("Result of model: $reslt");
  }

  applyModelOnImage(File file) async {
    var res = await Tflite.runModelOnImage(
        path: file.path, threshold: 0.5, imageMean: 127.5, imageStd: 127.5);
    setState(() {
      _result = res;
      String str = res[0]["label"];
      _name = str.substring(2);
      _confidence = _result != null
          ? (_result[0]["confidence"] * 100).toString().substring(0, 2) + "%"
          : "";
    });
  }

  @override
  void initState() {
    loadMyModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      SizedBox(
        height: 30,
      ),
      isImageLoaded
          ? Center(
              child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: FileImage(File(pickedImage.path)),
                      fit: BoxFit.contain)),
            ))
          : Container(),
      Text("Name : $_name\n Confidence $_confidence"),
      RawMaterialButton(
          onPressed: getImageFromCamera, child: Icon(Icons.camera)),
    ])));
  }
}
