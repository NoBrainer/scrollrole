import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/presentation/common/loading_spinner.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_backgrounds.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_classes.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_lists.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_species.dart';
import 'package:scrollrole/presentation/screen/rules/rules_header.dart';

class RulesBody extends StatelessWidget {
  const RulesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigBloc, ConfigState>(
      builder: (context, state) {
        ConfigStatus status = state.status;
        if (status.isLoading()) {
          return _LoadingRulesBody();
        } else if (status == ConfigStatus.failure) {
          //TODO: Handle rules parsing issues
          return _ErrorRulesBody(message: 'Error Parsing Rules');
        }

        return Center(
          child: ListView(
            children: [
              RulesHeader(),
              RulesBackgrounds(),
              RulesSpecies(),
              RulesClasses(),
              RulesLists(),
            ],
          ),
        );
      },
    );
  }
}

class _LoadingRulesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: LoadingSpinner(text: 'Loading rules config...'));
  }
}

class _ErrorRulesBody extends StatelessWidget {
  final String message;

  const _ErrorRulesBody({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: ListView(children: [Text(message)]));
  }
}
