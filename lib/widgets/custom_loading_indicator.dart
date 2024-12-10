import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          width: 100,
          child: LoadingIndicator(
            colors: const [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple,
            ],
            indicatorType: Indicator.lineScalePulseOut,
          ),
        ),
      );
  }
}
