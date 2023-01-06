import 'package:get/get.dart';

import '../../data/services/peticiones.dart';
import '../models/user.dart';

class ControllerUser extends GetxController{
  final Rxn<List<User>> _users = Rxn<List<User>>();
  //averiguar para que sirve el signo de pregunta y admiración
  //funciones future, cast, compute, decode
  //widget of the week - youtube
  List<User>? get listauser => _users.value;
  
  Future<void> enviaruser(String u, String p) async {
    _users.value = await PeticionesUser.validarUser(u, p);
  }
}