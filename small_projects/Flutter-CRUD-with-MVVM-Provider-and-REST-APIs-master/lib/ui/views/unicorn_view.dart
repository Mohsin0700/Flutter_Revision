import 'package:api_crud/core/models/unicorn_model.dart';
import 'package:api_crud/core/view_models/unicorn_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UnicornView extends StatelessWidget {
  const UnicornView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('All Unicorns'),
          centerTitle: true),
      body: Consumer<UnicornViewModel>(builder:
          (BuildContext context, UnicornViewModel viewModel, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: viewModel.getUnicorns(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<UnicornModel>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    if (viewModel.state == ViewState.Idle) {
                      return Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    viewModel.navigateToSingleUnicornView(
                                        context, index);
                                  },
                                  child: ListTile(
                                      tileColor: Colors.yellowAccent,
                                      title: Text(
                                          'Unicorn Name :${snapshot.data![index].name}'),
                                      trailing: PopupMenuButton(
                                        child: const Icon(Icons.more_vert),
                                        itemBuilder: (BuildContext context) =>
                                            <PopupMenuItem<ElevatedButton>>[
                                          PopupMenuItem(
                                            child: ElevatedButton.icon(
                                              onPressed: () async {
                                                String uId =
                                                    snapshot.data![index].sId!;
                                                await viewModel.deleteUnicorn(
                                                    id: uId, index: index);
                                              },
                                              icon: const Icon(Icons.delete),
                                              label: const Text('delete'),
                                            ),
                                          ),
                                          PopupMenuItem(
                                            child: ElevatedButton.icon(
                                              onPressed: () async {
                                                await viewModel.editUnicorn(
                                                    id: snapshot
                                                        .data![index].sId
                                                        .toString());
                                              },
                                              icon: const Icon(Icons.edit),
                                              label: const Text('Edit'),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              );
                            }),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }
                }),
          ],
        );
      }),
    );
  }
}
