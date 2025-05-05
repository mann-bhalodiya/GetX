import 'package:flutter/material.dart';
import 'package:getx/components/snackbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          ],
        ),
      ),
    );
  }
}
