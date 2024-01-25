import 'package:bs23_flutter_task/global/widgets/layouts/loading_layout.dart';
import 'package:bs23_flutter_task/src/home/bloc/repo_cubit.dart';
import 'package:bs23_flutter_task/src/home/model/repo_model.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:bs23_flutter_task/global/router/base_router.gr.dart';
import 'package:bs23_flutter_task/global/widgets/layouts/base_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();

  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RepoCubit(),
        ),
      ],
      child: this,
    );
  }
}

class _HomeViewState extends State<HomeView> {
  late RepoCubit _repoCubit;

  @override
  void initState() {
    super.initState();
    _repoCubit = context.read<RepoCubit>();
    _repoCubit.searchRepositories('Flutter', 1, 10);
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: 'Home',
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
        ),
      ],
      child: BlocConsumer<RepoCubit, RepoState>(
        listener: (context, state) {
          if (state is RepoLoading) {
            context.loaderOverlay.show();
          }

          if (state is RepoError) {
            context.loaderOverlay.hide();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is RepoEmpty) {
            context.loaderOverlay.hide();
            return Container(
              alignment: Alignment.center,
              child: const Text('No data found'),
            );
          }

          if (state is RepoLoaded) {
            context.loaderOverlay.hide();
            return ListView.builder(
              itemCount: state.result.items?.length ?? 0,
              itemBuilder: (context, index) {
                final Repo repo = state.result.items![index];
                return ListTile(
                  title: Text(repo.fullName ?? ''),
                  subtitle: Text(repo.description ?? ''),
                  onTap: () {},
                );
              },
            );
          }

          if (state is RepoError) {
            context.loaderOverlay.hide();
            return Container(
              alignment: Alignment.center,
              child: Text(state.message),
            );
          }

          return LoadingLayout();
        },
      ),
    );
  }
}
