import 'package:flutter/material.dart';

class ManageImagesScreen extends StatelessWidget {
  static const String route = 'manage-images-screen';
  const ManageImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Manage 1x,2x,3x images'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Default Image (i.e 1x): ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                Image.asset('assets/images/test_image.png'),
                const Text(
                  '2x Image: ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                Image.asset('assets/images/2x/test_image.png'),
                const Text(
                  '3x Image: ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                Image.asset('assets/images/3x/test_image.png'),
                const Text(
                  'Image selected w.r.t device pixel ratio : ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                Image.asset('assets/images/test_image.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
