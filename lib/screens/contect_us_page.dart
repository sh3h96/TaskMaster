import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Contact Us'),
        leading: IconButton(
           icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ) ,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.phone, size: 40),
              SizedBox(width: 20),
              Text("Phone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.mark_chat_read_rounded, size: 40),
              SizedBox(width: 20),
              Text("12345678", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.facebook, size: 40),
              SizedBox(width: 20),
              Text("Facebook", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.email, size: 40),
              SizedBox(width: 20),
              Text("Email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),





        ],
      ),
    );
  }
}