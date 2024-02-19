import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel/constant.dart';
import 'package:hotel/data/data.dart';

import 'package:hotel/view/satya/booking_detail/booking_detail_1.dart';

class DemoCategory extends StatelessWidget {
  const DemoCategory({super.key, required this.hotelList});

  final List<Hotel> hotelList;
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotelList.length,
        itemBuilder: (context, index) {
          final data = hotelList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: GestureDetector(
              onTap: () {
                Get.to(BookDetailScreenOne());
              },
              child: Container(
                width: Get.width / 1.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("${data.img}"),
                        fit: BoxFit.fitHeight)),
                child: Column(
                  children: [
                    // Rating star
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 20),
                          child: Container(
                            height: Get.height / 23,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: white,
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    // Information
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.name,
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(data.location,
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 17,
                                        )),
                                    SizedBox(
                                      width: 95,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.bookmark_outline,
                                          color: white,
                                          size: 30,
                                        ))
                                  ],
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: "\$ ${data.price}",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: white,
                                            fontWeight: FontWeight.w500),
                                        children: [
                                      TextSpan(
                                          text: "\t/night",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: textfieldcolor,
                                              fontWeight: FontWeight.w500))
                                    ]))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}