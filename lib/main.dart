import 'package:assignment_11/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TextEditingController nameTextEditingController = TextEditingController();
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                    controller: nameTextEditingController,
                    decoration: const InputDecoration(
                        hintText: "Enter Your City Name",
                        border: OutlineInputBorder())),
              ),
              Obx(() => Text(homeController.cityName.value)),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (nameTextEditingController.text != null) {
                      homeController
                          .changeCityName(nameTextEditingController.text);
                    } else {
                      print("vale is null");
                    }
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
