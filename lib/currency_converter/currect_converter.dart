import 'package:flutter/material.dart';

class CurrecyConverter extends StatefulWidget {
  // const CurrecyConverter({ Key key }) : super(key: key);

  // @override
  // State<CurrecyConverter> createState() => _CurrecyConverterState();
  @override
  _CurrecyConverterState createState() => _CurrecyConverterState();
}

class _CurrecyConverterState extends State<CurrecyConverter> {
  String? valueschoose;
  String? valueschoose1;
  @override
  Widget build(BuildContext context) {
    final TextEditingController _amount = TextEditingController();
    final TextEditingController _tot = TextEditingController();
    int cal;
    int result;

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Currency Converter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _amount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Amount",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Colors.grey.shade700),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButton<String>(
                    value: this.valueschoose1,
                    items: <String>['USD', 'Dirham'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) => setState(
                          () => this.valueschoose1 = value,
                        )),
                DropdownButton<String>(
                    value: this.valueschoose,
                    items: <String>[
                      'Srilankan Rupees',
                      'Indian Rupees',
                      'Bangladesh'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) => setState(
                          () => this.valueschoose = value,
                        )),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _tot,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Total",
                      labelStyle:
                          TextStyle(fontSize: 15, color: Colors.grey.shade700),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    if (valueschoose == "Srilankan Rupees" &&
                        valueschoose1 == "USD") {
                      cal = int.parse(_amount.text) * 300;
                      result = cal;
                      _tot.text = result.toString();
                    } else if (valueschoose == "Indian Rupees" &&
                        valueschoose1 == "USD") {
                      cal = int.parse(_amount.text) * 78;
                      result = cal;
                      _tot.text = result.toString();
                    } else if (valueschoose == "Bangladesh" &&
                        valueschoose1 == "USD") {
                      cal = int.parse(_amount.text) * 93;
                      result = cal;
                      _tot.text = result.toString();
                    } else if (valueschoose == "Bangladesh" &&
                        valueschoose1 == "Dirham") {
                      cal = int.parse(_amount.text) * 26;
                      result = cal;
                      _tot.text = result.toString();
                    } else if (valueschoose == "Indian Rupees" &&
                        valueschoose1 == "Dirham") {
                      cal = int.parse(_amount.text) * 22;
                      result = cal;
                      _tot.text = result.toString();
                    } else if (valueschoose == "Srilankan Rupees" &&
                        valueschoose1 == "Dirham") {
                      cal = int.parse(_amount.text) * 99;
                      result = cal;
                      _tot.text = result.toString();
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height / 14,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Convert",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
