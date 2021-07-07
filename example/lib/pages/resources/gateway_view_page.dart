import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/istio_v1alpha3.dart';

class GatewayViewPage extends StatefulWidget {
  const GatewayViewPage({
    required this.gateway,
    Key? key,
  }) : super(key: key);

  final Gateway gateway;

  @override
  State<GatewayViewPage> createState() => _GatewayViewPageState();
}

class _GatewayViewPageState extends State<GatewayViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gateway ${widget.gateway.metadata?.name}'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Text('Gateway Name: ${widget.gateway.metadata?.name}'),
            ),
          ),
        ],
      ),
    );
  }
}