import 'package:akademi_ek_ders_3/config.dart';

import 'main.dart';

Future<void> main() async {
  AppFlavor.flavor = Flavor.PROD;
  await mainCommon();
}
