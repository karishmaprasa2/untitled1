import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'graph_controller.dart';

class GraphScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GraphController controller = Get.put(GraphController());

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: controller.startDelayedUpdate,
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                      () => LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: controller.dataPoints,
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                        ),
                      ],
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        horizontalInterval: 20,
                        verticalInterval: 20,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: Colors.white.withOpacity(0.1),
                            strokeWidth: 1,
                          );
                        },
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: Colors.white.withOpacity(0.1),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  value.toDouble().toStringAsFixed(0),
                                  style: const TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      minX: 0,
                      maxX: controller.dataSize.toDouble(),
                      minY: -80,
                      maxY: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 110,
              top: 70,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '\$ 100↓',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 100,
              child: Obx(() => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "-${controller.currentValue.value.toStringAsFixed(3)}",
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
