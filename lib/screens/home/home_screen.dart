import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
Uri phonecall = Uri(scheme: 'tel',path: '7987008427');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('URL Lanucher', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text(''
                'Call Your favorite Person'
                ,style: TextStyle(
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold
              ),
            ),
            ElevatedButton(
                onPressed: () async{
                await launchUrl(phonecall);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: Text('Call',style: TextStyle(color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
