import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
            style: TextStyle(fontSize: 18,color: Colors.grey ),
            children: <TextSpan>[

              TextSpan(text: 'Welcome to '),
              TextSpan(text: 'AL_Daneq team', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '! We are dedicated to providing the best services and products to our customers. Our team is passionate about innovation and excellence, striving to exceed expectations in everything we do. Thank you for choosing us and we look forward to serving you.'),
              TextSpan(text: '\n\n\nAL_Daneq team Members:', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '\n\nShehab Shawqi\nAhmed Morfeeq\nMohammed Hamdi ', ),

            ],
          ),
        ),
      ),
    );
  }
}
