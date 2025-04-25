import 'package:flutter/material.dart';

class CountrySelectionPage extends StatefulWidget {
  @override
  _CountrySelectionPageState createState() => _CountrySelectionPageState();
}

class _CountrySelectionPageState extends State<CountrySelectionPage> {
  String _selectedCountry = 'Egypt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select the currency'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'select your currency ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            buildCountryOption('SAUDI ARABIA'),
            buildCountryOption('UAE'),
            buildCountryOption('Egypt'),
          ],
        ),
      ),
    );
  }

  Widget buildCountryOption(String countryName) {
    return RadioListTile(
      title: Text(countryName),
      value: countryName,
      groupValue: _selectedCountry,
      onChanged: (String? value) {
        setState(() {
          _selectedCountry = value!;
        });
      },
    );
  }
}
