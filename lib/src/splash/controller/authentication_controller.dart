import 'package:chiikawamarketapp/src/common/enum/authentication_status.dart';
import 'package:chiikawamarketapp/src/user/repository/authentication_repository.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../user/user/user_model.dart';

class AuthenticationController extends GetxController {

  AuthenticationController(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  Rx<AuthenticationsStatus> status = AuthenticationsStatus.init.obs;
  Rx<UserModel> userModel = const UserModel().obs;

  void authCheck() async {
    _authenticationRepository.user.listen((user) {
      _userStateChangedEvent(user);
    });
  }

  void _userStateChangedEvent(UserModel? user) async {
    if (user == null) {
      status(AuthenticationsStatus.unknown);
    } else {

    }
  }

  void logout() async {
    await _authenticationRepository.logout();
  }
}