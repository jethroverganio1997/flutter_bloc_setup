enum Flavor {
  dev,
  uat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Dev App';
      case Flavor.uat:
        return 'UAT App';
      case Flavor.prod:
        return 'Production App';
      default:
        return 'title';
    }
  }

}
