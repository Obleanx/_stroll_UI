import 'package:provider/provider.dart';
import 'package:stroll_ui/providers/time_provider.dart';

class AppProviders {
  /// Static method to get all providers for the app
  static List<ChangeNotifierProvider> providers() {
    return [
      ChangeNotifierProvider<TimeProvider>(
        create: (_) => TimeProvider(),
      ),
    ];
  }
}
