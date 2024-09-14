import 'package:flutter_bloc_setup/core/env/env.dart';

import '../flavors/flavors.dart';

class EnvReader {
  final Flavor flavor;

  EnvReader(this.flavor);

  String get baseUrl {
    switch (flavor) {
      case Flavor.dev:
        return DevEnv.key1;
      case Flavor.uat:
        return UatEnv.key1;
      case Flavor.prod:
        return ProdEnv.key1;
      default:
        throw UnimplementedError('Flavor case not implemented');
    }
  }


}
