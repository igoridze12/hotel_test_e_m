import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
    this.imageUrls,
  }) : super(key: key);

  final List<String?>? imageUrls;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      vsync: this,
      length: widget.imageUrls?.length ?? 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257,
      child: Stack(
        children: [
          _buildTabBarView(),
          _buildTabBar(),
        ],
      ),
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: _carouselChildren,
    );
  }

  Widget _buildTabBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: DefaultTabController(
          length: widget.imageUrls?.length ?? 0,
          child: TabBar(
            controller: _tabController,
            tabs: List<Widget>.generate(
              widget.imageUrls?.length ?? 0,
              (index) {
                final opacity = 0.27 - index * 5 / 100;
                return Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black.withOpacity(opacity),
                  ),
                );
              },
            ),
            indicator: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
            tabAlignment: TabAlignment.center,
            indicatorWeight: 1.0,
          ),
        ),
      ),
    );
  }

  List<Widget> get _carouselChildren => widget.imageUrls!
      .map(
        (e) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              e!,
              fit: BoxFit.fill,
            ),
          ),
        ),
      )
      .toList();
}
