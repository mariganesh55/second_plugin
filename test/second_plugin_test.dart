import 'package:flutter_test/flutter_test.dart';
import 'package:second_plugin/second_plugin.dart';
import 'package:second_plugin/second_plugin_platform_interface.dart';
import 'package:second_plugin/second_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSecondPluginPlatform
    with MockPlatformInterfaceMixin
    implements SecondPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SecondPluginPlatform initialPlatform = SecondPluginPlatform.instance;

  test('$MethodChannelSecondPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSecondPlugin>());
  });

  test('getPlatformVersion', () async {
    SecondPlugin secondPlugin = SecondPlugin();
    MockSecondPluginPlatform fakePlatform = MockSecondPluginPlatform();
    SecondPluginPlatform.instance = fakePlatform;

    expect(await secondPlugin.getPlatformVersion(), '42');
  });
}
