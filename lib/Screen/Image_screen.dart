import 'dart:io';
import 'package:flutter/material.dart';
import 'package:id_card_vitrendz/Constants/Color_constant.dart';
import 'package:id_card_vitrendz/Db/database.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import '../Widget/image_access_button.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? imagefile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
                    mybox.put(1, FileImage(imagefile!).file.path);
                    //detail.write("key10", FileImage(imagefile!).file.path);
                    Get.toNamed("/");
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
