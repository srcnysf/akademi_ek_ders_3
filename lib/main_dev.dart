import 'package:akademi_ek_ders_3/config.dart';
import 'package:akademi_ek_ders_3/main.dart';

Future<void> main() async {
  AppFlavor.flavor = Flavor.DEV;
  await mainCommon();
}
