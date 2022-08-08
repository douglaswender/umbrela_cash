import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:umbrela_cash/core/config/constants.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_entries.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_bloc.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_event.dart';
import 'package:umbrela_cash/core/utils/money_extension.dart';

import 'bloc/cash_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cashBloc = CashBloc();

  final getEntries = GetIt.I.get<GetEntries>();

  @override
  void initState() {
    cashBloc.add(const CashEventSetup(cashId: kCashId));
    test();
    super.initState();
  }

  test() async {
    final response = await getEntries();

    print(response);
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
