import 'package:carrocompras/domain/controller/controladorauthf.dart';
import 'package:carrocompras/domain/controller/controladorcarrito.dart';
import 'package:carrocompras/domain/controller/controlfirebase.dart';
import 'package:carrocompras/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/controller/controladoruser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBhK-v_eAPDs74ev69bl6IY0dVvBFpM8Jw",
              authDomain: "programacionmovil-1901d.firebaseapp.com",
              projectId: "programacionmovil-1901d",
              storageBucket: "programacionmovil-1901d.appspot.com",
              messagingSenderId: "324020057684",
              appId: "1:324020057684:web:804d492daa2714c97a5fc1"))
      : await Firebase.initializeApp();
  Get.put(ControllerUser());
  Get.put(ControlarCarrito());
  Get.put(Controllerauthf());
  Get.put(ConsultasController());
  await Firebase.initializeApp();
  runApp(const App());
}
