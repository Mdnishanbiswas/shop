import 'package:flutter/material.dart';

class PaymentMethodButton extends StatelessWidget {
  final String imageUrl;

  PaymentMethodButton({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
        onPressed: () {},
        child: Image.asset(
          imageUrl,
          width: 50,
          height: 50,
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                PaymentMethodButton(imageUrl: 'assets/bkash_logo.png'),
                PaymentMethodButton(imageUrl: 'assets/rocket_logo.png'),
                PaymentMethodButton(imageUrl: 'assets/visa_logo.png'),
                PaymentMethodButton(imageUrl: 'assets/mastercard_logo.png'),
                PaymentMethodButton(imageUrl: 'assets/amex_logo.png'),
              ],
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              items: <String>[
                'Option 1',
                'Option 2',
                'Option 3',
                'Option 4'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              hint: Text('Select an option'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
