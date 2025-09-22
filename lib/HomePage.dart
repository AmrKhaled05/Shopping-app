import 'package:ShoppingProject/Login.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  final PageController _pageController = PageController();


  double _opacity = 0.0;

  final List<String> productImages = [
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHBob25lc3xlbnwwfHwwfHx8MA%3D%3D', // headphones
    'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW91c2V8ZW58MHx8MHx8fDA%3D', // mouse
    'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a2V5Ym9hcmR8ZW58MHx8MHx8fDA%3D', // keyboard
    'https://media.istockphoto.com/id/2168246544/photo/minimalist-mousepad-mockup-with-blank-pad-keyboard-mouse-and-a-succulent-plant-on-a-white.webp?a=1&b=1&s=612x612&w=0&k=20&c=Fal5-w7UqJQQlqeX5c45zKmhJb2INPqzL7dq_LxuRGM=', // mouse pad
    'https://images.unsplash.com/photo-1667687435942-4fdff73a3ed6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlbmNpbHxlbnwwfHwwfHx8MA%3D%3D' // pencil
  ];
  final List<String> productNames = [
    tr("Product_Headphones"),
    tr("Product_Mouse"),
    tr("Product_Keyboard"),
    tr("Product_MousePad"),
    tr("Product_Pencil"),
  ];
  final List<int> discounts = [20, 15, 30, 10, 25];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const Login(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          tr("Products_title"),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: _pageController,
                children: const [
                  Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?w=600&auto=format&fit=crop&q=60'),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=600&auto=format&fit=crop&q=60'),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1664714628878-9d2aa898b9e3?w=600&auto=format&fit=crop&q=60'),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            GridView(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.6,
              ),
              children: [
                AspectRatio(
                  aspectRatio: 0.7,
                  child: Stack(
                    children: [
                      ProductCard(
                        imageUrl:
                        'https://media.istockphoto.com/id/2186322524/photo/dubai-chocolate-pistachio-paste-and-kunefe-filled-milk-chocolate.webp?a=1&b=1&s=612x612&w=0&k=20&c=a0w9gDhofmoT-f1adwJKeOVEVRWJy4Qm10-Eg4qdr94=',
                        categoryName: tr("Category_Name1"),
                        productName: tr("Product_Name1"),
                        price: 199.99,
                        currency: '\$',
                        onFavoritePressed: () {},
                      ),
                      Positioned(
                        top: 6,
                        left: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Colors.purple,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(tr("item_message")),
                                  duration: const Duration(seconds: 2),
                                  action: SnackBarAction(
                                    label: tr("Close_message"),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AspectRatio(
                  aspectRatio: 0.7,
                  child: Stack(
                    children: [
                      ProductCard(
                        imageUrl:
                        'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnR8ZW58MHx8MHx8fDA%3D',
                        categoryName: tr("Category_Name2"),
                        productName: tr("Product_Name2"),
                        price: 250.60,
                        currency: '\$',
                        onFavoritePressed: () {},
                      ),
                      Positioned(
                        top: 6,
                        left: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Colors.purple,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(tr("item_message")),
                                  duration: const Duration(seconds: 2),
                                  action: SnackBarAction(
                                    label: tr("Close_message"),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AspectRatio(
                  aspectRatio: 0.7,
                  child: Stack(
                    children: [
                      ProductCard(
                        imageUrl:
                        'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGxhcHRvcHxlbnwwfHwwfHx8MA%3D%3D',
                        categoryName: tr("Category_Name3"),
                        productName: tr("Product_Name3"),
                        price: 1500.0,
                        currency: '\$',
                        onFavoritePressed: () {},
                      ),
                      Positioned(
                        top: 6,
                        left: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Colors.purple,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(tr("item_message")),
                                  duration: const Duration(seconds: 2),
                                  action: SnackBarAction(
                                    label: tr("Close_message"),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AspectRatio(
                  aspectRatio: 0.7,
                  child: Stack(
                    children: [
                      ProductCard(
                        imageUrl:
                        'https://images.unsplash.com/photo-1664714628878-9d2aa898b9e3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2F0ZXIlMjBmbGFza3xlbnwwfHwwfHx8MA%3D%3D',
                        categoryName: tr("Category_Name4"),
                        productName: tr("Product_Name4"),
                        price: 50.0,
                        currency: '\$',
                        onFavoritePressed: () {},
                      ),
                      Positioned(
                        top: 6,
                        left: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Colors.purple,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(tr("item_message")),
                                  duration: const Duration(seconds: 2),
                                  action: SnackBarAction(
                                    label: tr("Close_message"),
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                tr("Hot_Offers_title") + " 🔥",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final imageUrl = productImages[index % productImages.length];
                return Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.orange, width: 1),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrl,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image, size: 64),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "${productNames[index]} - ${discounts[index]}% ${tr("Hot_Offers_discount")} ",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }

  Widget Card(int index) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        '$index',
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
