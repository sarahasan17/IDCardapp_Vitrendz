import 'dart:io';
import 'package:flutter/material.dart';
import 'package:id_card_vitrendz/Constants/Color_constant.dart';
import 'package:id_card_vitrendz/Constants/get_constant.dart';
import 'package:id_card_vitrendz/Constants/style_constant.dart';
import 'package:get/get.dart';
import 'package:id_card_vitrendz/Screen/IDCard_screen.dart';
import 'package:id_card_vitrendz/Constants/variable.dart';
class DetailUpdateScreen extends StatefulWidget {
  @override
  static const String routname = "/detailscreen";
  State<DetailUpdateScreen> createState() => _DetailUpdateScreenState();
}

class _DetailUpdateScreenState extends State<DetailUpdateScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _regno = TextEditingController();
  final TextEditingController _app_no = TextEditingController();
  final TextEditingController _blood_group = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _contact_no = TextEditingController();
  final TextEditingController _yr_grad = TextEditingController();
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
      body: SizedBox(
        child: ListView(shrinkWrap: true, children: [
          Container(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed("/imagescreen"),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15.0),
                    child: CircleAvatar(
                        backgroundColor: appbarcolor,
                        foregroundColor: color_text,
                        radius: 60,
                        child: Icon(
                          Icons.camera_enhance_outlined,
                          color: color_text,
                          size: 40,
                        )),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _name,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your name'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key", _name.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _regno,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your registration number'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key7", _regno.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: DropdownButton(
                          style: style_3,
                          iconEnabledColor: appbarcolor,
                          // Initial Value
                          value: campus,
                          // Down Arrow Icon
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: color_text,
                          ),
                          // Array list of items
                          items: button2.map((String button) {
                            return DropdownMenuItem(
                              value: button,
                              child: Text(button),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              campus = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key5", campus);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: DropdownButton(
                          style: style_3,
                          iconEnabledColor: appbarcolor,
                          // Initial Value
                          value: resident_status,
                          // Down Arrow Icon
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: color_text,
                          ),
                          // Array list of items
                          items: button1.map((String button) {
                            return DropdownMenuItem(
                              value: button,
                              child: Text(button),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              resident_status = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key8", resident_status);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _app_no,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your application number'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key3", _app_no.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _blood_group,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your Blood Group'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key2", _blood_group.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _address,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your Address'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key4", _address.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _contact_no,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your Contact Number'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key6", _contact_no.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _yr_grad,
                        decoration: kinputdecoration.copyWith(
                            hintText: 'Enter your Year of graduation'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          detail.write("key1", _yr_grad.text);
                          Get.toNamed('/');
                        },
                        child: Icon(
                          Icons.add,
                          color: color_text,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.maxFinite,
                  child: Text(
                    "In order to make changes in one specific field type the changes and then click on the add icon. You will be redirected to the id card screen and the given changes will be made. Inorder to add all the details click on the \"Update all the details\" button.",
                    style: TextStyle(
                      color: color_text,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      detail.write("key", _name.text);
                      detail.write("key1", _yr_grad.text);
                      detail.write("key2", _blood_group.text);
                      detail.write("key3", _app_no.text);
                      detail.write("key4", _address.text);
                      detail.write("key5", campus);
                      detail.write("key6", _contact_no.text);
                      detail.write("key7", _regno.text);
                      detail.write("key8", resident_status);
                      Get.offAll(IDCardScreen());
                    },
                    child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: color_text,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Update all the details',
                          style: style_3.copyWith(
                              fontSize: 17, color: color_background),
                        ))))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
