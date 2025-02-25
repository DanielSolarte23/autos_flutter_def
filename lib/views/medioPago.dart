import 'package:flutter/material.dart';

class Mediopago extends StatefulWidget {
  const Mediopago({super.key});

  @override
  State<Mediopago> createState() => _MediopagoState();
}

class _MediopagoState extends State<Mediopago> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Medio de pago", style: TextStyle(color: Colors.white),),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              color: Colors.black,
              child: ListTile(
                title: Row(
                  children: [
                    Text("Tarjeta de credito o debito", style: TextStyle(color: Colors.white, fontSize: 20),)
                  ],
                ),
                leading: Icon(Icons.credit_card, color: Colors.red,),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                title: Row(
                  children: [
                    Text("PayPal", style: TextStyle(color: Colors.white, fontSize: 20),)
                  ],
                ),
                leading: Icon(Icons.paypal, color: Colors.red,),
              ),
            ),
            Card(
              color: Colors.black,
              child: ListTile(
                title: Row(
                  children: [
                    Text("Transferencia bancaria", style: TextStyle(color: Colors.white, fontSize: 20),)
                  ],
                ),
                leading: Icon(Icons.account_balance, color: Colors.red,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
