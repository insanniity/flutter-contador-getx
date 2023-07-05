import 'package:contador/app/modules/cadastro/cadastro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends GetView<CadastroController> {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro ${controller.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.addUser,
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Form(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.nameController,
                        decoration: const InputDecoration(
                          labelText: 'Nome',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.idadeController,
                        decoration: const InputDecoration(
                          labelText: 'Idade',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: context.width,
              height: context.height,
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.listUser.length,
                  itemBuilder: (context, index) {
                    final user = controller.listUser[index];
                    return ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.idade.toString()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
