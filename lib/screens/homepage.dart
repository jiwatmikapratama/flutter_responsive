import 'package:flutter/material.dart';
import 'package:flutter_responsive/components/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        actions: const [
          Center(
            child: Text(
              'Halaman 1',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Center(
            child: Text(
              'Halaman 2',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
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
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(30.0),
                columnPadding: const EdgeInsets.all(30),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ImageCaption(
                      'https://source.unsplash.com/random/?Cryptocurrency&2',
                      'Ini Adalah Gambar 2',
                      300.0,
                      300.0,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ImageCaption(
                      'https://source.unsplash.com/random/?Cryptocurrency&3',
                      'Ini Adalah Gambar 3',
                      300.0,
                      300.0,
                    ),
                  ),
                ],
              ),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(30.0),
                columnPadding: const EdgeInsets.all(30),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ImageCaption(
                      'https://source.unsplash.com/random/?Cryptocurrency&5',
                      'Ini Adalah Gambar 4',
                      300.0,
                      300.0,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ImageCaption(
                      'https://source.unsplash.com/random/?Cryptocurrency&4',
                      'Ini Adalah Gambar 5',
                      300.0,
                      300.0,
                    ),
                  ),
                ],
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
