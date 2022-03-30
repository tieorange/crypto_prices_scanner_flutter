import 'package:crypto_prices/presentation/common/widgets/app_bar.dart';
import 'package:crypto_prices/presentation/common/widgets/app_scaffold.dart';
import 'package:crypto_prices/presentation/crypto_currencies_list/view/crypto_list_page.dart';
import 'package:crypto_prices/presentation/home/cubit/home_cubit.dart';
import 'package:crypto_prices/presentation/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum HomeTab { cryptoList, profile }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeTab _currentTabIndex = HomeTab.cryptoList;

  final tabPages = {
    HomeTab.cryptoList: const CryptoListPage(),
    HomeTab.profile: const Center(
      child: Text('USER PROFILE WILL BE HERE'),
    ),
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

  late final _pageController = PageController(
    initialPage: getPageIndexForTab(_currentTabIndex),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppScaffold(
      appBar: AppBarBuilder.buildAppBar(
        'Home',
        context,
        customTitle: HeroAppTitle(theme: theme),
      ),
      body: PageView(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        children: tabPages.values.toList(),
      ),
      bottomNavBar: BottomNavigationBar(
        items: bottomNavItems,
        type: BottomNavigationBarType.shifting,
        currentIndex: getPageIndexForTab(_currentTabIndex),
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void _onPageChanged(int page) {
    final tab = getTabForPageIndex(page);
    setState(() {
      _currentTabIndex = tab;
    });
  }

  int getPageIndexForTab(HomeTab tab) {
    return tabPages.keys.toList().indexOf(tab);
  }

  HomeTab getTabForPageIndex(int page) {
    return tabPages.keys.elementAt(page);
  }

  @override
  Future<void> dispose() async {
    _pageController.dispose();
    super.dispose();
  }
}
