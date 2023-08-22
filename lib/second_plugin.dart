import 'package:sample_plugin/sample_plugin.dart';

import 'second_plugin_platform_interface.dart';

class SecondPlugin {
  var samplePlugin = SamplePlugin();

  Future<String?> getPlatformVersion() {
    return SecondPluginPlatform.instance.getPlatformVersion();
  }

  void showDialogFromPlugin() {
    samplePlugin.showToast();
  }
}
