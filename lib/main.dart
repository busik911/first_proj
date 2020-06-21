import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:myluxurynewspaper/provider_data.dart';
import 'screens/start_screen.dart';
import 'package:provider/provider.dart';


void main() =>  runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context)=>Data(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.grey.shade900,backgroundColor: Colors.black87),
        home: AudioServiceWidget(child: StartScreen()),
      ),
    );
  }

}

