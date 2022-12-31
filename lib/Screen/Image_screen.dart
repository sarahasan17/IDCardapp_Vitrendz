import 'dart:io';
import 'package:flutter/material.dart';
import 'package:id_card_vitrendz/Constants/Color_constant.dart';
import 'package:id_card_vitrendz/Constants/get_constant.dart';
import 'package:id_card_vitrendz/Constants/style_constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? imagefile;
  File? key10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My IDCard',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: color_text,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 15, left: 15),
            child: Column(
              children: [
                if (imagefile != null)
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: appbarcolor,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: color_border),
                        image: DecorationImage(image: FileImage(imagefile!))),
                  )
                else
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: appbarcolor,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: color_border)),
                  ),
                ImageAccessButton(
                  text: "Capture Image",
                  onPress: () => Get_image(imagesource: ImageSource.camera),
                ),
                ImageAccessButton(
                  text: "Select from gallery",
                  onPress: () => Get_image(imagesource: ImageSource.gallery),
                ),
                ImageAccessButton(
                  text: "Done",
                  onPress: () {
                    detail.write("key10", FileImage(imagefile!).file.path);
                    Get.offAll("/detailscreen");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future Get_image({required ImageSource imagesource}) async {
    try {
      final file = await ImagePicker().pickImage(source: imagesource);
      setState(() {
        imagefile = File(file!.path);
      });
    } catch (e) {
      print(e);
    }
  }
}

class ImageAccessButton extends StatelessWidget {
  String text;
  VoidCallback onPress;
  ImageAccessButton({required this.text, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 15, right: 15, left: 15),
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: color_text,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            text,
            style: style_3.copyWith(color: color_background, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
