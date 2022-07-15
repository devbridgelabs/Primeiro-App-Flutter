import 'package:flutter/material.dart';
import 'package:teste/dblock_2/rest_api/model/user_model.dart';
import 'package:teste/dblock_2/rest_api/services/api_service.dart';

class HomeRestApi extends StatefulWidget {
  const HomeRestApi({Key? key}) : super(key: key);

  @override
  _HomeRestApiState createState() => _HomeRestApiState();
}

class _HomeRestApiState extends State<HomeRestApi> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    print('`A` `$_userModel[] .typr`.type![index].type . '
        '1 9 W < AAAAAAAAA > W 9 1');
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel![index].type),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
