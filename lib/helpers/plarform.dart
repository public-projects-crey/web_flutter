import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;

bool isIos() => Platform.isIOS ? true : false;

bool isAndroid() => Platform.isAndroid ? true : false;

bool isWeb() => kIsWeb ? true : false;

bool isMobile() => isIos() || isAndroid() ? true : false;
