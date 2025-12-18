import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPage();
  }
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  var result = 0.0;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        backgroundColor: Colors.blueGrey,
        centerTitle: false,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$result ₹',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: controller,

                cursorColor: Colors.orange,
                keyboardType: TextInputType.numberWithOptions(decimal: true),

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ), // color of the input text
                decoration: const InputDecoration(
                  hintText: 'Enter amount',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ), // color of the hint text
                  prefixIcon: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ), // color of the prefix icon
                  filled: true,
                  fillColor:
                      Colors.black26, // background color of the TextField
                  border: OutlineInputBorder(
                    // this is when not focused
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    // this is when focused
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint(
                    'Convert button pressed\nValue: ${controller.text}',
                  );
                  setState(() {
                    result = (double.tryParse(controller.text) ?? 0) * 83;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  elevation: 3.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),

                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
