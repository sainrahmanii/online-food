import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food/tab_bar/desserts.dart';
import 'package:online_food/tab_bar/drinks.dart';
import 'package:online_food/tab_bar/fast_food.dart';
import 'package:online_food/tab_bar/fruits.dart';
import 'package:online_food/tab_bar/seafoods.dart';
import 'package:online_food/tab_bar/snacks.dart';
import 'package:online_food/ui/cart_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CartPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          children: [
            SearchBarWidget(),
            TabBarWidget(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Color(0xFF11AC6A),
            unselectedLabelColor: Color(0xFFA4A4A4),
            indicatorColor: Color(0xFF11AC6A),
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            tabs: const [
              Tab(text: 'Fast Food'),
              Tab(text: 'Deserts'),
              Tab(text: 'Drinks'),
              Tab(text: 'Snacks'),
              Tab(text: 'Fruits'),
              Tab(text: 'Seafoods'),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            // Tambahkan Expanded di sini agar TabBarView bisa mengambil sisa ruang
            child: TabBarView(
              controller: _tabController,
              children: const [
                FastFood(),
                Desserts(),
                Drinks(),
                Snacks(),
                Fruits(),
                Seafoods(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF6F7FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search your favorite food',
          hintStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFFA4A4A4),
          ),
          icon: Icon(
            Icons.search,
            color: Color(0xFFA4A4A4),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
