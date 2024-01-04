import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/populer_controller.dart';

class PopulerView extends GetView<PopulerController> {
  const PopulerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopulerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PopulerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
