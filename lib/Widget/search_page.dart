import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  var _selectedCityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Form(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _selectedCityController,
                  decoration: InputDecoration(
                      labelText: 'City', border: OutlineInputBorder()),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  Navigator.pop(context,_selectedCityController.text);
                },
                iconSize: 36,
              ),
            ),

            //IconButton(icon: Icon(Icons.search),onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
