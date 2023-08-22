import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'second_plugin_method_channel.dart';

abstract class SecondPluginPlatform extends PlatformInterface {
  /// Constructs a SecondPluginPlatform.
  SecondPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static SecondPluginPlatform _instance = MethodChannelSecondPlugin();

  /// The default instance of [SecondPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelSecondPlugin].
  static SecondPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SecondPluginPlatform] when
  /// they register themselves.
  static set instance(SecondPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
