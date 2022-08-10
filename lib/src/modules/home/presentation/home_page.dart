import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:umbrela_cash/core/config/constants.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_bloc.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_event.dart';
import 'package:umbrela_cash/core/utils/money_extension.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/entries_bloc.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/exits_event.dart';

import 'bloc/cash_state.dart';
import 'bloc/entries_event.dart';
import 'bloc/entries_state.dart';
import 'bloc/exits_bloc.dart';
import 'bloc/exits_state.dart';

class MyHomePage extends StatefulWidget {
  final bool isAdmin;
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
    required this.isAdmin,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cashBloc = GetIt.I.get<CashBloc>();

  final entriesBloc = GetIt.I.get<EntriesBloc>();

  final exitsBloc = GetIt.I.get<ExitsBloc>();

  @override
  void initState() {
    cashBloc.add(const CashEventSetup(cashId: kCashId));
    entriesBloc.add(const EntriesEventLoad(cashId: kCashId));
    exitsBloc.add(const ExitsEventLoad(cashId: kCashId));
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
                            'Caixa',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          BlocBuilder(
                            bloc: cashBloc,
                            builder: (BuildContext context, CashState state) {
                              if (state is CashStateLoading) {
                                return Expanded(
                                  child: Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Colors.white70,
                                    highlightColor: Colors.red[400]!,
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              } else if (state is CashStateError) {
                                return Text(state.failure.toString());
                              } else {
                                return Text(
                                  (state as CashStateRegular)
                                      .cash
                                      .value
                                      .toReal(),
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
              ),
              Expanded(
                flex: 2,
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
                          BlocBuilder(
                            bloc: entriesBloc,
                            builder:
                                (BuildContext context, EntriesState state) {
                              if (state is EntriesStateLoading) {
                                return Expanded(
                                  child: Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Colors.white70,
                                    highlightColor: Colors.red[400]!,
                                    child: Container(
                                      //height: 48,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              } else if (state is EntriesStateError) {
                                return Text(state.failure.toString());
                              } else {
                                final movimentations =
                                    (state as EntriesStateRegular)
                                        .movimentaions;
                                return Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          itemCount: movimentations.length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                              movimentations[index]
                                                  .valor
                                                  .toReal(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: TextButton(
                                            onPressed: () {
                                              debugPrint('vermais...');
                                            },
                                            child: Text(
                                              'Ver mais...',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            )),
                                      )
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
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
                          BlocBuilder(
                            bloc: exitsBloc,
                            builder: (BuildContext context, ExitsState state) {
                              if (state is ExitsStateLoading) {
                                return Expanded(
                                  child: Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Colors.white70,
                                    highlightColor: Colors.red[400]!,
                                    child: Container(
                                      //height: 48,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              } else if (state is ExitsStateError) {
                                return Text(state.failure.toString());
                              } else {
                                final movimentations =
                                    (state as ExitsStateRegular).movimentaions;
                                return Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          itemCount: movimentations.length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                              movimentations[index]
                                                  .valor
                                                  .toReal(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: TextButton(
                                            onPressed: () {
                                              debugPrint('vermais...');
                                            },
                                            child: Text(
                                              'Ver mais...',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            )),
                                      )
                                    ],
                                  ),
                                );
                              }
                            },
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
      floatingActionButton: widget.isAdmin
          ? FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
