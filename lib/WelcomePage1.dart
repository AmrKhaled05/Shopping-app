import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildPage(
        image: "assets/photo.png",
        titleEn: "Welcome to Your Shopping Experience",
        titleAr: "مرحبًا بك في تجربة التسوق الخاصة بك",
        descriptionEn: "Find the best products with exclusive deals.",
        descriptionAr: "اكتشف أفضل المنتجات مع عروض حصرية.",
      ),
      _buildPage(
        image: "assets/photo2.png",
        titleEn: "Fast & Secure Checkout",
        titleAr: "دفع سريع وآمن",
        descriptionEn: "Shop with confidence anytime, anywhere.",
        descriptionAr: "تسوق بكل ثقة في أي وقت ومن أي مكان.",
      ),
    ];

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageViewController,
              onPageChanged: _handlePageViewChanged,
              children: pages,
            ),
          ),
          PageIndicator(
            tabController: _tabController,
            currentPageIndex: _currentPageIndex,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
            isOnDesktopAndWeb: _isOnDesktopAndWeb,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildPage({
    required String image,
    required String titleEn,
    required String titleAr,
    required String descriptionEn,
    required String descriptionAr,
  }) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          // English Title
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: Text(
              titleEn,
              key: ValueKey(titleEn),
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Arabic Title
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: Text(
              titleAr,
              key: ValueKey(titleAr),
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const SizedBox(height: 15),
          // English Description
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: Text(
              descriptionEn,
              key: ValueKey(descriptionEn),
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Arabic Description
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            child: Text(
              descriptionAr,
              key: ValueKey(descriptionAr),
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    if (!_isOnDesktopAndWeb) return;
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  bool get _isOnDesktopAndWeb => true;
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    required this.isOnDesktopAndWeb,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;
  final bool isOnDesktopAndWeb;

  @override
  Widget build(BuildContext context) {
    if (!isOnDesktopAndWeb) return const SizedBox.shrink();
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            splashRadius: 16.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentPageIndex > 0) {
                onUpdateCurrentPageIndex(currentPageIndex - 1);
              }
            },
            icon: const Icon(Icons.arrow_left_rounded, size: 60.0),
          ),
          TabPageSelector(
            controller: tabController,
            color: colorScheme.surface,
            selectedColor: colorScheme.primary,
          ),
          IconButton(
            splashRadius: 16.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentPageIndex < tabController.length - 1) {
                onUpdateCurrentPageIndex(currentPageIndex + 1);
              }
            },
            icon: const Icon(Icons.arrow_right_rounded, size: 60.0),
          ),
        ],
      ),
    );
  }
}
