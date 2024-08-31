import 'dart:async';
import 'dart:math';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphController extends GetxController {
  RxList<FlSpot> dataPoints = <FlSpot>[].obs;
  Random random = Random();
  var currentValue = 0.0.obs;
  final int dataSize = 100;
  Timer? _updateTimer;

  @override
  void onInit() {
    super.onInit();
    _generateInitialData();
  }

  void _generateInitialData() {
    currentValue.value = random.nextDouble() * 100 - 80;
    for (int i = 0; i < dataSize; i++) {
      dataPoints.add(FlSpot(i.toDouble(), currentValue.value));
      _updateValue();
    }
  }

  void _updateValue() {
    double change = (random.nextDouble() - 0.5) * 10;
    currentValue.value = (currentValue.value + change).clamp(-80, 20);
  }

  void updateData() {
    _updateValue();
    if (dataPoints.length >= dataSize) {
      dataPoints.removeAt(0);
    }
    dataPoints.add(FlSpot((dataPoints.length).toDouble(), currentValue.value));
  }

  void startDelayedUpdate() {
    _updateTimer?.cancel();
    _updateTimer = Timer.periodic(const Duration(minutes: 3), (timer) {
      updateData();
    });
  }


  @override
  void onClose() {
    _updateTimer?.cancel();
    super.onClose();
  }
}
