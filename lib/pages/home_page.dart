import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/dialogue.dart';
import 'package:getx/components/snackbar.dart';
import 'package:getx/controllers/counter.dart';

class HomePage extends StatelessWidget {
  CounterController controller = Get.put(CounterController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learning GetX")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                snackBarHelper();
              },
              child: Text("Show SnackBar"),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.blue.shade800,
                  foregroundColor: Colors.white,
                  mini: true,
                  onPressed: () {
                    controller.increase();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                Obx(
                  () => Text(
                    "Your counter value is : ${controller.count}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  backgroundColor: Colors.blue.shade800,
                  foregroundColor: Colors.white,
                  mini: true,

                  onPressed: () {
                    controller.decrease();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                dialogueBoxHelper();
              },
              child: Text("Show DialogueBox"),
            ),
          ],
        ),
      ),
    );
  }
}
