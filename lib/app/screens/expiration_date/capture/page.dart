import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ariya/app/core/theme/ariya_colors.dart';
import 'package:ariya/app/core/theme/ariya_typography.dart';
import 'package:ariya/app/screens/expiration_date/capture/controller.dart';
import 'package:ariya/app/screens/expiration_date/controller.dart';

class CaptureScreen extends GetView<CaptureController> {
  const CaptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).extension<ariyaColors>()!;
    final textTheme = Theme.of(context).extension<ariyaTypography>()!;

    return WillPopScope(
      onWillPop: () async {
        Get.find<ExpirationDateController>().refreshItems();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('등록하기',
              style: textTheme.header1.copyWith(color: colorTheme.grayscale900)),
        ),
        body: GetBuilder<CaptureController>(
          builder: (_) {
            if (!controller.isInitialized.value) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              children: [
                Expanded(
                  child: CameraPreview(controller.cameraController),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}