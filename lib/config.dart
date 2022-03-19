enum Flavor {
  DEV,
  BETA,
  PROD,
}

class AppFlavor {
  static Flavor? flavor;

  static String get appFlavor {
    switch (flavor) {
      case Flavor.PROD:
        return 'RELEASE';
      case Flavor.BETA:
        return 'BETA';
      case Flavor.DEV:
      default:
        return 'DEVELOPMENT';
    }
  }

  // static String get baseUrl {
  //   switch (flavor) {
  //     case Flavor.PROD:
  //       return ApiConstants.BASE_URL;
  //     case Flavor.BETA:
  //       return locator<PreferenceUtil>().baseUrl ?? ApiConstants.BASE_URL;
  //     case Flavor.DEV:
  //     default:
  //       return ApiConstants.BASE_URL;
  //   }
  // }

  static bool isDev() {
    return flavor == Flavor.DEV;
  }

  static bool isBeta() {
    return flavor == Flavor.BETA;
  }

  static bool isProd() {
    return flavor == Flavor.PROD;
  }
}
