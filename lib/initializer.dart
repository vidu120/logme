import 'package:firebase_core/firebase_core.dart';
import 'package:logme/firebase_options.dart';

Future<void> initializeApp() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
