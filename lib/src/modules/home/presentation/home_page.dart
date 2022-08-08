import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:umbrela_cash/core/config/constants.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_bloc.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_event.dart';
import 'package:umbrela_cash/core/utils/money_extension.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/entries_bloc.dart';

import 'bloc/cash_state.dart';
import 'bloc/entries_event.dart';
import 'bloc/entries_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cashBloc = GetIt.I.get<CashBloc>();

  final entriesBloc = GetIt.I.get<EntriesBloc>();

  @override
  void initState() {
    cashBloc.add(const CashEventSetup(cashId: kCashId));
    entriesBloc.add(const EntriesEventLoad(cashId: kCashId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kMaterialAppTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caixa',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        BlocBuilder(
                          bloc: cashBloc,
                          builder: (BuildContext context, CashState state) {
                            if (state is CashStateLoading) {
                              return Shimmer.fromColors(
                                enabled: true,
                                baseColor: Colors.white70,
                                highlightColor: Colors.red[400]!,
                                child: Container(
                                  height: 48,
                                  color: Colors.white,
                                ),
                              );
                            } else if (state is CashStateError) {
                              return Text(state.failure.toString());
                            } else {
                              return Text(
                                (state as CashStateRegular).cash.value.toReal(),
                                style: Theme.of(context).textTheme.headline1,
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saídas',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Expanded(
                            child: BlocBuilder(
                              bloc: entriesBloc,
                              builder:
                                  (BuildContext context, EntriesState state) {
                                if (state is EntriesStateLoading) {
                                  return Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Colors.white70,
                                    highlightColor: Colors.red[400]!,
                                    child: Container(
                                      //height: 48,
                                      color: Colors.white,
                                    ),
                                  );
                                } else if (state is EntriesStateError) {
                                  return Text(state.failure.toString());
                                } else {
                                  final movimentations =
                                      (state as EntriesStateRegular)
                                          .movimentaions;
                                  return ListView.builder(
                                    itemCount: movimentations.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          movimentations[index].valor.toReal(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Entradas',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Expanded(
                            child: BlocBuilder(
                              bloc: entriesBloc,
                              builder:
                                  (BuildContext context, EntriesState state) {
                                if (state is EntriesStateLoading) {
                                  return Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Colors.white70,
                                    highlightColor: Colors.red[400]!,
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  );
                                } else if (state is EntriesStateError) {
                                  return Text(state.failure.toString());
                                } else {
                                  return Text(
                                    (state as EntriesStateRegular)
                                        .movimentaions
                                        .first
                                        .descricao,
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
