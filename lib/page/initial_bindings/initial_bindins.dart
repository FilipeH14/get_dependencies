import 'package:get/get.dart';
import 'package:get_depedencias/page/initial_bindings/auth_model.dart';

class InitialBindins implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(name: 'Filipe', email: 'filipe@mail.com', curso: 'Flutter'),
      permanent: true,
    );
  }
}
