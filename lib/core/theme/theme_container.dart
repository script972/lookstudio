import 'package:aircode_starter/core/theme/solution_theme.dart';
import 'package:aircode_starter/core/theme/theme_vendor_one.dart';
import 'package:aircode_starter/core/theme/theme_vendor_two.dart';

import '../../configs/environment/environment_variables.dart';

abstract class ThemeFactory {
  static SolutionTheme get lightTheme => _vendorTheme.lightTheme;

  static SolutionTheme get darkTheme => _vendorTheme.darkTheme;

  static const _isVendorTheme1 =
      EnvironmentVariables.vendorThemeConfiguration == 1;
  static const _isVendorTheme2 =
      EnvironmentVariables.vendorThemeConfiguration == 2;

  static final _vendorTheme1 =
      ThemeContainer(VendorThemeOneLight(), VendorThemeOneDark());
  static final _vendorTheme2 =
      ThemeContainer(VendorThemeTwoLight(), VendorThemeTwoDark());
  static final _defaultVendorTheme = _vendorTheme1;

  static ThemeContainer get _vendorTheme {
    if (_isVendorTheme1) return _vendorTheme1;
    if (_isVendorTheme2) return _vendorTheme2;
    return _defaultVendorTheme;
  }
}

class ThemeContainer {
  final SolutionTheme lightTheme;
  final SolutionTheme darkTheme;

  ThemeContainer(this.lightTheme, this.darkTheme);
}
