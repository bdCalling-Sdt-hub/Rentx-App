


import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rentx/utils/app_utils.dart';
import 'dart:developer' as print;
import 'package:flutter/foundation.dart';

import 'package:screenshot/screenshot.dart';

class ScreenShotHelper{

  ///============== Capture image repo=========================>>>
  static Future<Uint8List?> captureAndSaveImage({required ScreenshotController screenshotController, bool isShare = false}) async{
    final Uint8List? uint8List = await screenshotController.capture();
      print.log("uint8List $uint8List");


    if(uint8List != null){
      final DeviceInfoPlugin info = DeviceInfoPlugin(); // import 'package:device_info_plus/device_info_plus.dart';
      final AndroidDeviceInfo androidInfo = await info.androidInfo;
      debugPrint('releaseVersion : ${androidInfo.version.release}');
      final int androidVersion = int.parse(androidInfo.version.release);

      if (androidVersion >= 13) {
        // final request = await Permission.photos.request(); //import 'package:permission_handler/permission_handler.dart';
        // debugPrint('IsPermission Granted? : ${request.isGranted}');
        final result = await ImageGallerySaver.saveImage(uint8List,name: "screen_shot_mage",);

        if(isShare){
            print.log("============>>> $result");

          return uint8List;

        } else{
          if(result['isSuccess']){
            Fluttertoast.showToast(msg: "Image downloaded to your phone gallery");
              print.log("Image saved to gallery");
          }else{
            print.log("Failed to save image: ${result['error']}");
          }
        }
      }
      if(androidVersion < 13){
        final PermissionStatus status = await Permission.storage.request();
        if(status.isGranted){
          final result = await ImageGallerySaver.saveImage(uint8List,name: "screen_shot_mage",);
          if(isShare){
            return uint8List;
          } else{
            if(result['isSuccess']){
              Fluttertoast.showToast(msg: "Image downloaded to your phone gallery");
                print.log("Image saved to gallery");
            }else{
              print.log("Failed to save image: ${result['error']}");
            }
          }
        }else{
          await Permission.storage.request();
            print.log("Permission to access storage denied");
        }
      }
    }else{
      Utils.snackBarMessage("Something went wrong, the screenshot could not be taken", "");
    }
    return uint8List;
  }
}