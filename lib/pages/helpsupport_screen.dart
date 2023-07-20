import 'package:flutter/material.dart';
import 'package:jam/pages/connect2_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpAndSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help and Support'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Dementia Help and Support',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'If you or someone you know is living with dementia, here are some resources and helplines that can provide support:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            _buildHelpLineItem(
              icon: Icons.phone,
              title: 'Mental Health Service',
              phoneNumber: '500-454',
            ),
            _buildHelpLineItem(
              icon: Icons.web,
              title: 'Alzheimer\'s Foundation Indonesia',
              websiteUrl: 'https://alzi.or.id/',
            ),
            // Add more help and support resources as needed...
          ],
        ),
      ),
    );
  }

  void launchWebsite() async {
    const String url = 'https://alzi.or.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Tidak dapat membuka tautan, berikan tanggapan atau perintah yang sesuai
      throw 'Tidak dapat membuka $url';
    }
  }

  void _makeEmergencyCall() async {
    const emergencyNumber = "tel:550454";
    if (await canLaunch(emergencyNumber)) {
      await launch(emergencyNumber);
    } else {
      throw "Gagal menelpon nomor darurat.";
    }
  }

  Widget _buildHelpLineItem({
    IconData? icon,
    required String title,
    String? phoneNumber,
    String? websiteUrl,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: phoneNumber != null
          ? Text(phoneNumber)
          : websiteUrl != null
              ? Text(websiteUrl)
              : null,
      onTap: () {
        if (phoneNumber != null) {
          _makeEmergencyCall();
        } else if (websiteUrl != null) {
          launchWebsite();
        }
      },
    );
  }
}
