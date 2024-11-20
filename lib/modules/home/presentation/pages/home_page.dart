import 'package:auto_size_text/auto_size_text.dart';
import 'package:bilhetinhos/modules/auth/data/repositories/user_data_repository_impl.dart';
import 'package:bilhetinhos/modules/home/data/repositories/pot_repository_impl.dart';
import 'package:bilhetinhos/modules/home/domain/use_cases/fetch_all_pots_by_user_use_case.dart';
import 'package:bilhetinhos/modules/home/presentation/states/list_notes_state.dart';
import 'package:bilhetinhos/modules/home/presentation/viewmodels/list_notes_viewmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListNotesViewModel listNotesViewModel = ListNotesViewModel(
    FetchAllCurrentUserPotsUseCaseImpl(
      UserDataRepositoryImpl(FirebaseAuth.instance),
      PotRepositoryImpl(FirebaseFirestore.instance),
    ),
  );

  var currentUser = "";

  @override
  void initState() {
    listNotesViewModel.fetchAllPots();
    setState(() {
      currentUser = FirebaseAuth.instance.currentUser?.displayName ?? "sem nome";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AutoSizeText(
            'Olá, $currentUser',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const AutoSizeText(
            'Potes',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              listNotesViewModel.fetchAllPots();
            },
            child: Text('Recarregar'),
          ),
          BlocBuilder<ListNotesViewModel, ListNotesState>(
              bloc: listNotesViewModel,
              builder: (context, state) {
                if (state is ListPotsLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state is ListPotsValueState) {
                  final list = state.pots;
                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final currentPot = list[index];
                        return Container(
                          child: Text(currentPot.title),
                        );
                      });
                }
                return Container();
              })
        ],
      ),
    );
  }
}
