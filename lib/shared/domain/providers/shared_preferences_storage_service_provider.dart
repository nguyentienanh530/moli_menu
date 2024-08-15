import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/local/shared_prefs_storage_service.dart';

final stotageServiceProvider = Provider((ref) {
  final SharedPrefsService preferences = SharedPrefsService();
  preferences.init();
  return preferences;
});
