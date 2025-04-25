import 'package:electric_store/country_selection_page.dart';
import 'package:electric_store/login.dart';
import 'package:electric_store/currency_selection_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 0), // Adjust as needed
            // Add space between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the CountrySelectionPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CountrySelectionPage(),
                  ),
                );
              },
              child: Text('country'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60), // Set width and height of the button
              ),
            ),
            SizedBox(height: 10), // Add space between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the CurrencySelectionPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CurrencySelectionPage(),
                  ),
                );
              },
              child: Text('currency'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60), // Set width and height of the button
              ),
            ),
            SizedBox(height: 10), // Add space between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the Login page and replace the current route
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogIn(),
                  ),
                );
              },
              child: Text('sign out'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 60), // Set width and height of the button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
