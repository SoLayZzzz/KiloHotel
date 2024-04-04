import 'package:get/get.dart';
import 'package:hotel/controller/booking_controller.dart';
import 'package:hotel/controller/selectDateController.dart';
import 'package:hotel/data/roomRepo.dart';

class SelectDateBnding extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectDateController());
    Get.put(RoomRepo());
    Get.put(BookingController(roomRepo: Get.find()));
  }
}
