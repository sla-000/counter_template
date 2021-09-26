import 'package:counter_template/src/utils/os.dart';

void initFirebase() {
  if (!isDesktopExceptMac) {
    // await Firebase.initializeApp();
  }
}
