
import 'package:get/get.dart';
import 'package:to_do_app_getx/controllers/auth_controller.dart';


//this will bind the controller to the app
class AuthBinding extends Bindings {
  @override
  void dependencies() {
    //lazyPut() will intialize the controller only when it is needed
    //this should then be binded to the main,when the app starts
    // TODO: implement dependencies
    Get.lazyPut(() => AuthOperations());
  }

}