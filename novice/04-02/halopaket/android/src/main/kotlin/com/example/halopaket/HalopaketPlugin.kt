package com.example.halopaket

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class HalopaketPlugin : MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "halopaket")
      channel.setMethodCallHandler(HalopaketPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android Version: Android " + android.os.Build.VERSION.RELEASE + "\nOS Version:" + System.getProperty("os.version") + "(" + android.os.Build.VERSION.INCREMENTAL + ")" + "\nOS API Level: " + android.os.Build.VERSION.SDK_INT + "\nDevice: " + android.os.Build.DEVICE + "\nModel (and Product): " + android.os.Build.MODEL + " (" + android.os.Build.PRODUCT + ")")
    } else {
      result.notImplemented()
    }
  }
}
