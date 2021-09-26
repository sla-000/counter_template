import 'dart:io';

import 'package:flutter/foundation.dart';

bool get isDesktopExceptMac => !kIsWeb && (Platform.isWindows || Platform.isLinux);

bool get isMobile => isAndroid || isIOS;

bool get isAndroid => !kIsWeb && Platform.isAndroid;

bool get isIOS => !kIsWeb && Platform.isIOS;

bool get isDesktop => !kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);
