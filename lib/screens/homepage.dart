import 'package:flutter/material.dart';
import 'package:flutter_responsive/components/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageCaptionBig(
                'https://source.unsplash.com/random/?Cryptocurrency&1',
                'Ini Adalah Gambar 1',
                double.infinity,
                250.0,
              ),
              ImageCaption(
                'https://source.unsplash.com/random/?Cryptocurrency&2',
                'Ini Adalah Gambar 2',
                300.0,
                300.0,
              ),
              ImageCaption(
                'https://source.unsplash.com/random/?Cryptocurrency&3',
                'Ini Adalah Gambar 3',
                300.0,
                300.0,
              ),
              ImageCaption(
                'https://source.unsplash.com/random/?Cryptocurrency&5',
                'Ini Adalah Gambar 4',
                300.0,
                300.0,
              ),
              ImageCaption(
                'https://source.unsplash.com/random/?Cryptocurrency&4',
                'Ini Adalah Gambar 5',
                300.0,
                300.0,
              ),
              Container(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    const Text(
                      'Silahkan Ikuti kami pada social media kami',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          socialMedia(Icons.mediation_rounded, 'Instagram'),
                          socialMedia(Icons.video_file, 'Youtube'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
