import 'package:flutter/material.dart';
import 'package:my_provider/provider_p.dart';
import 'package:provider/provider.dart';
class Counter1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
            child:Text(Provider.of<Provider_pro>(context).counter.toString(),
              style: TextStyle(
                fontSize: 40,
              ),
            )
        ),
      ),
    );
  }
}
