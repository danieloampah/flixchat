import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/features/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:flix_chat/features/home/presentation/widgets/movie_card.dart';
import 'package:flix_chat/features/home/presentation/widgets/section_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: context.height(0.1),
        title: const Column(
          children: [
            Text('Hello, Danny Legend'),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const SectionTitle(
                    title: 'Categories',
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children:
                            List.generate(20, (index) => const MovieCard())),
                  ),
                  const SizedBox(height: 20),
                  const SectionTitle(
                    title: 'Trending',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            20,
                            (index) => const MovieCard(
                                  isTrending: true,
                                ))),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: context.width(0.01),
            left: context.width(0.05),
            right: context.width(0.05),
            child: const BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
