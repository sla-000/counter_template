import 'package:counter_template/src/interfaces/settings.dart';
import 'package:counter_template/src/utils/os.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

Future<void> initFirebase() async {
  if (!isDesktopExceptMac && GetIt.I.get<TemplateSettings>().firebaseEnabled) {
    await Firebase.initializeApp();
  }
}
