import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:tugas_01/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarMerah = constraints.maxWidth;
          double tinggiMerah = constraints.maxHeight;
          return Stack(
            children: [
              TextButton(
                onPressed: () => Get.toNamed (Routes.PRODUCT),
                child: Text("GO TO TUGAS 02"),
              ),
              Center(
                child: Container(
                  width: lebarMerah * 0.50,
                  height: tinggiMerah * 0.50,
                  color: Colors.red,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}