import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class GetxListener<T> extends StatefulWidget {
  final Rx<T> stream;
  final Widget child;
  final Function(T) listen;
  final Function()? initcall;
  const GetxListener({
    this.initcall,
    required this.stream,
    required this.listen,
    required this.child,
    super.key,});

  @override
  State<GetxListener> createState() {
    stream.listen(listen);
    return _GetxListenerState();
  }
}

class _GetxListenerState extends State<GetxListener> {
  @override
  void initState() {
    super.initState();

    if (widget.initcall != null) {
      widget.initcall!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
