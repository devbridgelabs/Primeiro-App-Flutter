// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:teste/crud3/car.dart';
import 'package:teste/crud3/database_helper.dart';

class CarCrudHome extends StatefulWidget {
  @override
  _CarCrudHomeState createState() => _CarCrudHomeState();
}

class _CarCrudHomeState extends State<CarCrudHome> {
  final dbHelper = DatabaseHelper.instance;

  List<Car> cars = [];
  List<Car> carsByName = [];

  //controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController milesController = TextEditingController();

  //controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController milesUpdateController = TextEditingController();

  //controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.assignment,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.edit,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.delete,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
          labelColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cars.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == cars.length) {
                    return RaisedButton(
                      child: Text('Atualizar'),
                      onPressed: () {
                        setState(() {
                          _queryAll();
                        });
                      },
                    );
                  }
                  return Container(
                    margin: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      bottom: 5,
                      top: 10,
                    ),
                    height: 40,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${cars[index].id} ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '${cars[index].name} ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '${cars[index].miles} Km',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome do carro',
                      ),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            carsByName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: carsByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '${carsByName[index].id} - ${carsByName[index].name} - ${carsByName[index].miles} km',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome do carro',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: milesController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Km rodados',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Salvar'),
                    onPressed: () {
                      String name = nameController.text;
                      int miles = int.parse(milesController.text);
                      _insert(name, miles);
                    },
                  ),
                ],
              ),
            ),
            ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: idUpdateController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ID do carro',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: nameUpdateController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nome do carro',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: milesUpdateController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Km rodado',
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text('Alterar detalhes do carro'),
                        onPressed: () {
                          int id = int.parse(idUpdateController.text);
                          String name = nameUpdateController.text;
                          int miles = int.parse(milesUpdateController.text);
                          _update(id, name, miles);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ID do carro',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Deletar'),
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);
                      _delete(id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _insert(name, miles) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnMiles: miles
    };
    Car car = Car.fromMap(row);
    final id = await dbHelper.insert(car);
    _showMessageInScaffold('Salvando o id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    cars.clear();
    allRows.forEach((row) => cars.add(Car.fromMap(row)));
    _showMessageInScaffold('Consulta concluída.');
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    carsByName.clear();
    allRows.forEach((row) => carsByName.add(Car.fromMap(row)));
  }

  void _update(id, name, miles) async {
    // row to update
    Car car = Car(id, name, miles);
    final rowsAffected = await dbHelper.update(car);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}
