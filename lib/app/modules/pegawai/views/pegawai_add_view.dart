// import 'package:bcdx_11312136/app/modules/mahasiswa/controllers/mahasiswa_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/modules/pegawai/controllers/pegawai_controller.dart';

class PegawaiAddView extends GetView<PegawaiController> {
  const PegawaiAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Pegawai'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNidn,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Nidn"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cProdi,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Prodi"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cFakultas,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Fakultas"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.add(
                controller.cNidn.text,
                controller.cNama.text,
                controller.cProdi.text,
                controller.cFakultas.text
              ),
              child: Text("Simpan"),
            )
          ],
        ),
      ),
    );
  }
}

