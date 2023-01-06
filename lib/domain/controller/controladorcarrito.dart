import 'package:get/get.dart';

class ControlarCarrito extends GetxController{
  final _salchipapa = 0.obs;
  
  int get salchi => _salchipapa.value;

  addSalchipapa(){
    _salchipapa.value=_salchipapa.value + 1;
  }
  removeSalchipapa(){

    _salchipapa.value=_salchipapa.value - 1;
    if(_salchipapa.value <0){
      _salchipapa.value=0;
    }
  }
}