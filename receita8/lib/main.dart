import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

enum TableStatus{idle,loading,ready,error}
class DataService{
  final ValueNotifier<Map<String,dynamic>> tableStateNotifier = ValueNotifier({
    'status':TableStatus.idle,
    'dataObjects':[],
  });

  void carregar(index) {
    final funcoes = [carregarCafes, carregarCervejas, carregarNacoes, carregarVeiculos];
    tableStateNotifier.value = {
      'status': TableStatus.loading,
      'dataObjects': [],
    };
    funcoes[index]();
  }

  void carregarCafes() {
    var coffeesUri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: 'api/coffee/random_coffee',
      queryParameters: {'size': '5'}
    );

    try {
      http.read(coffeesUri).then((jsonString) {
        var coffeesJson = jsonDecode(jsonString);
        tableStateNotifier.value = {
          'status': TableStatus.ready,
          'dataObjects': coffeesJson,
          'propertyNames': ["blend_name", "origin", "variety"],
          'columnNames' : ["Nome", "Origem", "Variedade"]
        };
      });
    } catch (error) {
      tableStateNotifier.value = {
        'status': TableStatus.error,
        'dataObjects': [],
      };
    }
  }

  void carregarCervejas() {
    var beersUri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: 'api/beer/random_beer',
      queryParameters: {'size': '5'}
    );

    try {
      http.read(beersUri).then((jsonString) {
        var beersJson = jsonDecode(jsonString);
        tableStateNotifier.value = {
          'status': TableStatus.ready,
          'dataObjects': beersJson,
          'propertyNames': ["name","style","ibu"],
          'columnNames' : ["Nome", "Estilo", "IBU"]
        };
      });
    } catch (error) {
      tableStateNotifier.value = {
        'status': TableStatus.error,
        'dataObjects': [],
      };
    }
  }

  Future<void> carregarNacoes() async {
    var nationsUri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: 'api/nation/random_nation',
      queryParameters: {'size': '5'}
    );

    try {
      var jsonString = await http.read(nationsUri);
      var nationsJson = jsonDecode(jsonString);
      tableStateNotifier.value = {
        'status': TableStatus.ready,
        'dataObjects' : nationsJson,
        'propertyNames' : ['nationality', 'language', 'capital'],
        'columnNames' : ['Nacionalidade', 'Idioma', 'Capital']
      };
    } catch (error) {
      tableStateNotifier.value = {
        'status': TableStatus.error,
        'dataObjects': [],
      };
    }
  }

  void carregarVeiculos() {
    var vehiclesUri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: 'api/vehicle/random_vehicle',
      queryParameters: {'size': '5'}
    );

    try {
      http.read(vehiclesUri).then((jsonString) {
        var vehiclesJson = jsonDecode(jsonString);
        tableStateNotifier.value = {
          'status': TableStatus.ready,
          'dataObjects': vehiclesJson,
          'propertyNames': ["make_and_model","color","fuel_type"],
          'columnNames' : ["Marca e modelo", "Cor", "Tipo de combustível"]
        };
      });
    } catch (error) {
      tableStateNotifier.value = {
        'status': TableStatus.error,
        'dataObjects': [],
      };
    }
  }
}

final dataService = DataService();

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar( 
          title: const Text("Dicas"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                valueListenable: dataService.tableStateNotifier,
                builder:(_, value, __){
                  switch (value['status']){
                    case TableStatus.idle: 
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: "data:image/png;base64,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",
                            ),
                            Text(
                              "Este aplicativo exibe dados de itens aleatórios\nreferentes a cafés, bebidas, nações ou veículos.\n\nPara iniciar, toque em uma das opções.",
                              style: TextStyle(fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ]
                        );
                    case TableStatus.loading:
                      return CircularProgressIndicator();
                    case TableStatus.ready: 
                      return DataTableWidget(
                        jsonObjects:value['dataObjects'], 
                        propertyNames: value['propertyNames'], 
                        columnNames: value['columnNames']
                      );
                    case TableStatus.error: 
                      return Text("Lascou");
                  }
                  return Text("...");
                }
              )
            ]
          )
        ),
        bottomNavigationBar: NewNavBar(itemSelectedCallback: dataService.carregar)
      )
    );
  }
}

class NewNavBar extends HookWidget {
  final _itemSelectedCallback;
  NewNavBar({itemSelectedCallback}):
    _itemSelectedCallback = itemSelectedCallback ?? (int){}
    
  @override
  Widget build(BuildContext context) {
    var state = useState(1);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        state.value = index;
        _itemSelectedCallback(index);                
      }, 
      currentIndex: state.value,
      items: const [
        BottomNavigationBarItem(
          label: "Cafés",
          icon: Icon(Icons.coffee_outlined),
        ),
        BottomNavigationBarItem(
          label: "Cervejas", 
          icon: Icon(Icons.local_drink_outlined)
        ),
        BottomNavigationBarItem(
          label: "Nações", 
          icon: Icon(Icons.flag_outlined)
        ),
        BottomNavigationBarItem(
          label: "Veículos",
          icon: Icon(Icons.car_rental_outlined)
        )
      ]
    );
  }
}

class DataTableWidget extends HookWidget {
  final List jsonObjects;
  final List<String> columnNames;
  final List<String> propertyNames;

  DataTableWidget({this.jsonObjects = const [], this.columnNames = const ["Nome","Estilo","IBU"], this.propertyNames= const ["name", "style", "ibu"]}) {
    jsonObjects.sort((obj1, obj2) => obj1[propertyNames[0]].compareTo(obj2[propertyNames[0]]));
  }

  @override
  Widget build(BuildContext context) {
    var stateIndex = useState(0);
    var stateAscending = useState(true);
    return DataTable(
      sortColumnIndex: stateIndex.value,
      sortAscending: stateAscending.value,
      columns: columnNames.map( 
        (name) => DataColumn(
          onSort: (index, Ascending) {
            stateIndex.value = index;
            stateAscending.value = Ascending;
            if (Ascending) {
              jsonObjects.sort((obj1, obj2) => obj1[propertyNames[index]].compareTo(obj2[propertyNames[index]]));
            }
            else {
              jsonObjects.sort((obj1, obj2) => obj2[propertyNames[index]].compareTo(obj1[propertyNames[index]]));
            }
          },
          label: Expanded(
            child: Text(name, style: TextStyle(fontStyle: FontStyle.italic))
          )
        )
      ).toList(),
      rows: jsonObjects.map( 
        (obj) => DataRow(
          cells: propertyNames.map(
            (propName) => DataCell(Text(obj[propName]))
          ).toList()
        )
      ).toList()
    );
  }
}