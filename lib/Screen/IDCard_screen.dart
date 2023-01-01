import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:id_card_vitrendz/Constants/Color_constant.dart';
import 'package:id_card_vitrendz/Constants/get_constant.dart';
import 'package:id_card_vitrendz/Constants/style_constant.dart';
import 'package:id_card_vitrendz/Db/database.dart';
import 'package:id_card_vitrendz/Widget/card_data.dart';

class IDCardScreen extends StatelessWidget {
  const IDCardScreen({Key? key}) : super(key: key);

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
          Column(
            children: [
              Card_data(
                child: Column(children: [
                  Image.asset('assets/images/VIT_logo.png'),
                  Text('${detail.read("key5") ?? "detail not found"} CAMPUS',
                      style: style_1.copyWith(
                        fontFamily: 'Lora',
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  if (mybox.get(1) == null)
                    Container(
                      child: Image.network(
                        'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                        height: 250,
                      ),
                    )
                  else
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.file(File(mybox.get(1)), fit: BoxFit.fill),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    detail.read("key") ?? "Detail not available",
                    style: style_1.copyWith(fontSize: 28),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    detail.read("key7") ?? "detail not found",
                    style: style_1.copyWith(fontWeight: FontWeight.w400),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.maxFinite,
                    color: color_text,
                    alignment: Alignment.center,
                    child: Text(
                      detail.read("key8") ?? "detail not found",
                      style: style_1.copyWith(color: color_background),
                    ),
                  )
                ]),
              ),
            ],
          ),
          Card_data(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('App No: ', style: style_2),
                    Text(
                      detail.read("key3") ?? "detail not found",
                      style: style_3,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text('Blood Group: ', style: style_2),
                    Text(
                      detail.read("key2") ?? "detail not found",
                      style: style_3,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Official Address: ', style: style_2),
                Text('VIT, ${detail.read("key5") ?? "detail not found"} ',
                    style: style_3),
                const SizedBox(
                  height: 5,
                ),
                Text('Address: ', style: style_2),
                Container(
                    width: double.maxFinite,
                    child: Text(detail.read("key4") ?? "detail not found",
                        style: style_3)),
                const SizedBox(
                  height: 5,
                ),
                Text('Contact No: ', style: style_2),
                Text(detail.read("key6") ?? "detail not found", style: style_3),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text('Valid upto: ', style: style_2),
                    Text(
                      'JULY-${detail.read("key1") ?? "detail not found"}',
                      style: style_3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/VIT_sign.png',
                          height: 42,
                        ),
                        Text('Issuing Authority',
                            style:
                                style_2.copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/VIT_sign.png',
                          height: 42,
                        ),
                        Text('Holder\'s Signature',
                            style:
                                style_2.copyWith(fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/VIT_scan.png',
                        height: 60,
                      ),
                      Text(
                        detail.read("key7") ?? "detail not found",
                        style: style_3.copyWith(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Website : www.vit.ac.in',
                        style: style_2.copyWith(
                            fontFamily: 'Lora', fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          TextButton(
            onPressed: () {
              Get.toNamed("/detailscreen");
            },
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: color_text,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: color_border, width: 2)),
              child: Text(
                'Add/Update Details',
                style: style_1.copyWith(color: color_background),
              ),
            ),
          )
        ],
      ),
    );
  }
}
