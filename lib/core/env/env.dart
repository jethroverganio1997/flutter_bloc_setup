// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.uat.env')
abstract class UatEnv {
  @EnviedField(varName: 'KEY1')
  static const String key1 = _UatEnv.key1;
  @EnviedField(varName: 'KEY2', obfuscate: true)
  static final String key2 = _UatEnv.key2;
}

@Envied(path: '.prod.env')
abstract class ProdEnv {
  @EnviedField(varName: 'KEY1')
  static const String key1 = _ProdEnv.key1;
  @EnviedField(varName: 'KEY2', obfuscate: true)
  static final String key2 = _ProdEnv.key2;
}


@Envied(path: '.dev.env')
abstract class DevEnv {
  @EnviedField(varName: 'KEY1')
  static const String key1 = _DevEnv.key1;
  @EnviedField(varName: 'KEY2', obfuscate: true)
  static final String key2 = _DevEnv.key2;
}

