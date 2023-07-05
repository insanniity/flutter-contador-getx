import 'package:contador/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.setValor,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<HomeController>(
              builder: (control) {
                return Text(
                  control.count.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Obx(
              () => Text(
                controller.count2.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
            OutlinedButton(onPressed: controller.accessNextPage, child: const Text("Cadastrar"))
          ],
        ),
      ),
    );
  }
}
