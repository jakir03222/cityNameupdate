import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString cityName = "No City Name".obs;
  RxInt age = 20.obs;
  RxBool richCity = true.obs;

  void changeCityName(String name) {
    cityName.value = name;
  }
}
