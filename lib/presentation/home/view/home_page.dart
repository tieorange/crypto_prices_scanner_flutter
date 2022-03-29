import 'package:crypto_prices/presentation/common/widgets/app_bar.dart';
import 'package:crypto_prices/presentation/common/widgets/app_scaffold.dart';
import 'package:crypto_prices/presentation/home/cubit/home_cubit.dart';
import 'package:crypto_prices/presentation/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../crypto_currencies_list/view/crypto_list_page.dart';

enum HomeTab { cryptoList, profile }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _selectedIndex = 0;

  final tabPages = {
    HomeTab.cryptoList: const CryptoListPage(),
    HomeTab.profile: const SignInSignUpView(),
  };

  final bottomNavItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      activeIcon: Icon(Icons.person),
      label: 'Profile',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarBuilder.buildAppBar(
        'Home',
        context,
      ),
      body: const Text('Home'),
      bottomNavBar: BottomNavigationBar(
        items: bottomNavItems,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
