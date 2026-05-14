import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 18,color: Colors.grey),
            children: <TextSpan>[
              TextSpan(text: 'Welcome to the Help Page!\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '1. This app is designed to provide the best user experience.\n'),
              TextSpan(text: '2. You can navigate between pages using the main menu.\n'),
              TextSpan(text: '3. If you encounter any issues, do not hesitate to contact the support team.\n'),
              TextSpan(text: '4. Thank you for using our app!\n'),
            ],
          ),
        ),
      ),
    );
  }
}
