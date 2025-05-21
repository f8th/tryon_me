import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class ResultsScreen extends StatelessWidget {
  final String outputImageUrl;

  ResultsScreen({required this.outputImageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              outputImageUrl,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) {
                return Text('Failed to load image.');
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    // Request storage/gallery permission
                    var status = await Permission.photos.request(); // iOS
                    if (status.isDenied || status.isPermanentlyDenied) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Permission denied to save image.')),
                      );
                      return;
                    }
                    // For Android, request storage permission
                    if (Theme.of(context).platform == TargetPlatform.android) {
                      var androidStatus = await Permission.storage.request();
                      if (androidStatus.isDenied || androidStatus.isPermanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Permission denied to save image.')),
                        );
                        return;
                      }
                    }
                    try {
                      await ImageDownloader.downloadImage(outputImageUrl);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Image saved to gallery!')),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to save image: $e')),
                      );
                    }
                  },
                  child: Text('Save Image'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement share functionality
                  },
                  child: Text('Share Image'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
