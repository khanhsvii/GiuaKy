import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:complex_flutter_ui/colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/video_info.json")
        .then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 5,
    );
    var sizedBox2 = const SizedBox(
      height: 50,
    );
    var sizedBox3 = const SizedBox(
      width: 5,
    );
    var sizedBox4 = const SizedBox(
      width: 10,
    );
    var sizedBox5 = const SizedBox(
      width: 5,
    );
    var sizedBox6 = const SizedBox(
      height: 30,
    );
    var sizedBox7 = const SizedBox(
      width: 30,
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          color.AppColor.gradientFirst.withOpacity(0.8),
          color.AppColor.gradientSecond.withOpacity(0.9)
        ], begin: const FractionalOffset(0.0, 0.4), end: Alignment.topRight)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: color.AppColor.secondPageTopIconColor,
                          )),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: color.AppColor.secondPageTopIconColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: newMethod,
                  ),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  sizedBox,
                  Text(
                    "and Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  sizedBox2,
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  color.AppColor
                                      .secondPageContainerGradient1stColor,
                                  color.AppColor
                                      .secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.secondPageIconColor,
                            ),
                            sizedBox3,
                            Text(
                              "68 min",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor),
                            )
                          ],
                        ),
                      ),
                      sizedBox4,
                      Container(
                        width: 230,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  color.AppColor
                                      .secondPageContainerGradient1stColor,
                                  color.AppColor
                                      .secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: color.AppColor.secondPageIconColor,
                            ),
                            sizedBox5,
                            Text(
                              "Resistance band, kettle bell",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: Column(
                children: [
                  sizedBox6,
                  Row(
                    children: [
                      sizedBox7,
                      Text(
                        "Circuit 1: Legs Toning",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.circuitsColor),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(
                            Icons.loop,
                            size: 28,
                            color: color.AppColor.loopColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3 sets",
                            style: TextStyle(
                                fontSize: 15, color: color.AppColor.setsColor),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 1,
                    thickness: 6,
                    color: color.AppColor.secondPageContainerGradient1stColor
                        .withOpacity(0.1),
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ListView(
                          children: [
                            //1Done
                            Row(
                              children: [
                                const SizedBox(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/fff/anotherside.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column()
                              ],
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //2Done
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image: AssetImage('assets/fff/bells.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //3Done
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image: AssetImage('assets/fff/chest.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //4done mountain
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image:
                                          AssetImage('assets/fff/climbers.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //5DOneGlutes
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image:
                                          AssetImage('assets/fff/glutes.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //6Donesquatjumps

                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image:
                                          AssetImage('assets/fff/jumpers.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //7Donesumo squats
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image: AssetImage('assets/fff/sumo.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //8Donejumps
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image: AssetImage('assets/fff/jumps.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //9DoneSide bar
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image: AssetImage('assets/fff/sides.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //10DoneSquats
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    child: Image(
                                      image:
                                          AssetImage('assets/fff/squats.jpg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column()
                                ],
                              ),
                            ),
                            const Divider(
                              height: 5,
                              thickness: 3,
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  double get newMethod => 30;
}
