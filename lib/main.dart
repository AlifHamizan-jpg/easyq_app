import 'package:flutter/material.dart';

void main() {
  runApp(const EasyQApp());
}

class EasyQApp extends StatelessWidget {
  const EasyQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easyQ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/login-form': (context) => const LoginFormPage(),
        '/register': (context) => const RegisterPage(),
        '/reset-password': (context) => const PasswordResetPage(),
        '/link-sent': (context) => const LinkSentPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const UserProfilePage(),
        '/settings': (context) => const SettingsPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/faq': (context) => const FAQPage(),
        '/change-password': (context) => const ChangePasswordPage(),
        '/about-us': (context) => const AboutUsPage(),
        '/change-email': (context) => const ChangeEmailPage(),
        '/report-problem': (context) => const ReportProblemPage(),
      },
    );
  }
}


// MUKA 1: WELCOME

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(top: -60, left: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(bottom: -60, right: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.sync, color: Colors.white, size: 50),
              const Text('easyQ', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              const Text('Welcome to\neasyQ', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text('Skip the wait, Enjoy the Taste', style: TextStyle(color: Colors.white70, fontSize: 14)),
              const SizedBox(height: 80),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Text('START', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// MUKA 2: LOGIN PILIHAN

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(top: -60, left: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(bottom: -60, right: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.sync, color: Colors.white, size: 50),
              const Text('easyQ', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              const Text('Please continue with\nyour account', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(height: 40),
              SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login-form'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: const Text("Don't have an account? Register here", style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              const Icon(Icons.g_mobiledata, color: Colors.white, size: 35),
            ],
          ),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 3: BORANG LOGIN
// ==================================================
class LoginFormPage extends StatelessWidget {
  const LoginFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(top: -60, left: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(bottom: -60, right: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(top: 50, left: 20, child: Icon(Icons.arrow_back, color: Colors.white)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.sync, color: Colors.white, size: 50),
              const Text('easyQ', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFFD000),
                    hintText: 'Username',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 280,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFFD000),
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/reset-password'),
                  child: const Text('Forgot password ?', style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
              SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/dashboard', (route) => false),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Text('CONTINUE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 4: REGISTER
// ==================================================
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(top: -60, left: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(bottom: -60, right: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(top: 50, left: 20, child: Icon(Icons.arrow_back, color: Colors.white)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('REGISTER', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              _inputField('Name'),
              _inputField('Username'),
              _inputField('Password', isPassword: true),
              _inputField('Confirm Password', isPassword: true),
              const SizedBox(height: 30),
              SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Text('CONTINUE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputField(String hint, {bool isPassword = false}) {
    return SizedBox(
      width: 280,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFD000),
            hintText: hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 5: PASSWORD RESET
// ==================================================
class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(top: -60, left: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(bottom: -60, right: -60, child: CircleAvatar(radius: 100, backgroundColor: Color(0xFFFFD000))),
          const Positioned(top: 50, left: 20, child: Icon(Icons.arrow_back, color: Colors.white)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('PASSWORD RESET', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFFD000),
                    hintText: 'Phone number',
                    prefixText: '🇲🇾 +60 ',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('*We send link to your phone', style: TextStyle(color: Colors.white, fontSize: 11)),
              ),
              SizedBox(
                width: 280,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/link-sent'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD000),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Text('SEND OTP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 6: LINK SENT
// ==================================================
class LinkSentPage extends StatelessWidget {
  const LinkSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B4A0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LINK SENT!', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            const Text('Didnt receive message?', style: TextStyle(color: Colors.white, fontSize: 14)),
            TextButton(onPressed: () {}, child: const Text('Resend link', style: TextStyle(color: Colors.lightBlueAccent))),
            const SizedBox(height: 60),
            SizedBox(
              width: 280,
              height: 45,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD000),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: const Text('BACK TO LOGIN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Page 7: DASHBOARD- Alif Hamizan

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  // Senarai data kafe
  final List<Map<String, dynamic>> cafeList = [
    {
      "name": "The Study Bistro - University Campus",
      "tag": "20% off all meals",
      "tagColor": Colors.green,
      "rating": 4.9,
      "distance": "100m",
      "image": "assets/bistro.jpg",
    },
    {
      "name": "Campus Grub",
      "tag": "FREE DELIVERY",
      "tagColor": Colors.red,
      "rating": 4.7,
      "distance": "50m",
      "image": "assets/campus_grub.jpg",
    },
    {
      "name": "Bubble Waffle Hub - Student Centre",
      "tag": "Combo Deals",
      "tagColor": Colors.orange,
      "rating": 4.9,
      "distance": "200m",
      "image": "assets/waffle.jpg",
    },
    {
      "name": "Pasta Project - University Walk",
      "tag": "Student Discount",
      "tagColor": Colors.blue,
      "rating": 4.8,
      "distance": "300m",
      "image": "assets/pasta.jpg",
    },
    {
      "name": "Energy Boost Cafe - Gym Complex",
      "tag": "Fresh & Healthy",
      "tagColor": Colors.green,
      "rating": 4.6,
      "distance": "150m",
      "image": "assets/energy.jpg",
    },
    {
      "name": "Asia Street Eats - Market Square",
      "tag": "Weekend Special",
      "tagColor": Colors.red,
      "rating": 4.7,
      "distance": "200m",
      "image": "assets/asia.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      appBar: AppBar(
        title: const Text('Home Dashboard', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFD2B48C),
        elevation: 0,
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text('Find Your Cafe', style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          IconButton(icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black), onPressed: () => Navigator.pushNamed(context, '/cart')),
          IconButton(icon: const Icon(Icons.person_outline, color: Colors.black), onPressed: () => Navigator.pushNamed(context, '/profile')),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kotak Carian
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search Cafe',
                  prefixIcon: Icon(Icons.search, color: Colors.brown),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
            const SizedBox(height: 18),

            // Banner Promo
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: const Center(
                child: Text(
                  'BUY 1 GET 1 FREE\nBOBA MILK TEA OFFER',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 18),

            // ✅ Kotak Wallet (boleh diklik)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WalletPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wallet', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    Text('RM 99.20', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 22),

            // Senarai 6 Kafe (2 bersebelahan)
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cafeList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 18,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (context, index) {
                final cafe = cafeList[index];
                return _cafeCard(
                  name: cafe["name"],
                  tag: cafe["tag"],
                  tagColor: cafe["tagColor"],
                  rating: cafe["rating"],
                  distance: cafe["distance"],
                  imagePath: cafe["image"],
                );
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() => _selectedIndex = i);
          if (i == 1) Navigator.pushNamed(context, '/cafe-list');
          if (i == 2) Navigator.pushNamed(context, '/notifications');
        },
        backgroundColor: const Color(0xFFD2B48C),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt, size: 28), label: 'Queue'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined, size: 28), label: 'Notifications'),
        ],
      ),
    );
  }

  Widget _cafeCard({
    required String name,
    required String tag,
    required Color tagColor,
    required double rating,
    required String distance,
    required String imagePath,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 3)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(color: tagColor, borderRadius: BorderRadius.circular(6)),
                      child: Text(tag, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Positioned(top: 8, right: 8, child: Icon(Icons.favorite_border, color: Colors.white)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12), maxLines: 2, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 14),
                    const SizedBox(width: 3),
                    Text(rating.toString(), style: const TextStyle(fontSize: 11)),
                    const Spacer(),
                    const Icon(Icons.location_on, size: 12, color: Colors.grey),
                    const SizedBox(width: 2),
                    Text(distance, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 8: CART
// ==================================================
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      appBar: AppBar(
        title: const Text('Your Cart', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFD2B48C),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _cartItem('BOBA MILK TEA', 'RM 6.00'),
            _cartItem('ODEN', 'RM 14.40'),
            _cartItem('SUSHI', 'RM 16.00'),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Total'), Text('RM 60.40', style: TextStyle(fontWeight: FontWeight.bold))],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, padding: const EdgeInsets.symmetric(vertical: 12)),
                child: const Text('CHECK OUT', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cartItem(String name, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Icon(Icons.local_cafe, size: 40),
          const SizedBox(width: 10),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(name), Text(price, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))])),
          const Row(children: [Icon(Icons.remove_circle_outline), Text('2'), Icon(Icons.add_circle_outline)]),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 9: WALLET (GANTI FINANCE)
// ==================================================
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5DEB3),
      appBar: AppBar(
        title: const Text(
          'Finance',
          style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF5DEB3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.trending_up, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'do more with your money with easyQFinance',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                // Kad GX Account
                Expanded(
                  child: Container(
                    height: 130,
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF7B2CBF), Color(0xFF5A189A)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Active', style: TextStyle(color: Colors.white70, fontSize: 13)),
                            Icon(Icons.account_balance_wallet, color: Colors.white, size: 20),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text('GX Account', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
                          child: const Text('NEW', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),

                // Kad easyQPay Wallet
                Expanded(
                  child: Container(
                    height: 130,
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('easyQPay Wallet', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        const Text('RM 99.20', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(Icons.savings, color: Colors.white, size: 32),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),
            const Text(
              'Recent transactions -',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _transactionItem('LAKSA', 'RM 6.00'),
            _transactionItem('ODEN X2', 'RM 18.00'),
            _transactionItem('BOBA MILK TEA', 'RM 5.00'),
            _transactionItem('ENERGY DRINK', 'RM 3.00'),
          ],
        ),
      ),
    );
  }

  Widget _transactionItem(String title, String amount) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text('PAYMENT COMPLETED', style: TextStyle(fontSize: 10, color: Colors.blueAccent)),
              ),
              Text(amount, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
// ==================================================
// MUKA 11: USER PROFILE
// ==================================================
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0), // Background kelabu muda di atas
      appBar: AppBar(
        title: const Text(
          'User Profile',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Bahagian Atas (Profile)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color(0xFFE5E0E0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/edit-profile'),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    const Text(
                      '27/06/2007',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Gambar Profile Bulat dengan border nipis
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: const Center(
                    child: Icon(Icons.person_outline, size: 60, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Ikon bendera (guna emoji atau icon)
                    const Text('🇲🇾 ', style: TextStyle(fontSize: 18)),
                    const Text(
                      'Nadzha',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ],
                ),
                const Text(
                  'D24316942',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                // Pill untuk Email
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'nadzhaa254@gmail.com',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          // Bahagian Bawah (Notifications)
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFEAD6E8), // Warna ungu muda/pink
                borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'Notifications',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    _notificationCard('assets/waffle.jpg', 'Order received at 10.30 a.m'),
                    const SizedBox(height: 15),
                    _notificationCard('assets/boba.jpg', 'Order received at 10.30 a.m'),
                    const SizedBox(height: 40),
                    // Footer
                    const Icon(Icons.info_outline, color: Colors.black87),
                    const SizedBox(height: 5),
                    const Text(
                      'ABOUT',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Text(
                      'App Version: 1.0.0\nTerms & Privacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _notificationCard(String imagePath, String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9C4), // Kuning lembut
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 60,
                height: 60,
                color: Colors.grey.shade300,
                child: const Icon(Icons.fastfood),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: [
                  const TextSpan(text: 'Order received at '),
                  TextSpan(
                    text: text.split('at ').last,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 12: SETTINGS
// ==================================================
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _newMenu = true;
  bool _announcement = false;
  bool _promo = true;
  bool _highContrast = false;
  String _language = "ENG";

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Language"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text("English"),
              onTap: () {
                setState(() => _language = "ENG");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Malay"),
              onTap: () {
                setState(() => _language = "MAL");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Log out", style: TextStyle(fontWeight: FontWeight.bold)),
        content: const Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            child: const Text("Log out", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E5E5), // Light pinkish background
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ACCOUNT
              const Text('Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _settingsItem(Icons.lock_outline, 'Change Password', onTap: () => Navigator.pushNamed(context, '/change-password')),
              _settingsItem(Icons.email_outlined, 'Change Email', onTap: () => Navigator.pushNamed(context, '/change-email')),

              const SizedBox(height: 20),

              // NOTIFICATION
              const Text('Notification', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _settingsSwitch(Icons.notifications_none, 'New Menu Available', _newMenu, (v) => setState(() => _newMenu = v)),
              _settingsSwitch(Icons.notifications_none, 'Cafeteria Announcement', _announcement, (v) => setState(() => _announcement = v)),
              _settingsSwitch(Icons.notifications_none, 'Promotions or Discount', _promo, (v) => setState(() => _promo = v)),

              const SizedBox(height: 20),

              // APPEARANCE
              const Text('Appearance', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _settingsSwitch(Icons.nightlight_outlined, 'High Contrast Mode', _highContrast, (v) => setState(() => _highContrast = v)),
              _settingsItem(Icons.language, 'Language', trailingText: _language, onTap: _showLanguageDialog),

              const SizedBox(height: 20),

              // ABOUT APP
              const Text('About App', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _settingsItem(Icons.help_outline, 'About Us', onTap: () => Navigator.pushNamed(context, '/about-us')),
              _settingsItem(Icons.help_outline, 'FAQ', onTap: () => Navigator.pushNamed(context, '/faq')),
              _settingsItem(Icons.help_outline, 'Report A Problem', onTap: () => Navigator.pushNamed(context, '/report-problem')),

              const SizedBox(height: 30),

              // LOGOUT
              Center(
                child: TextButton.icon(
                  onPressed: _showLogoutDialog,
                  icon: const Icon(Icons.logout, color: Colors.red, size: 20),
                  label: const Text('Log out', style: TextStyle(color: Colors.red, fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _settingsItem(IconData icon, String title, {String? trailingText, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 22),
            const SizedBox(width: 15),
            Expanded(child: Text(title, style: const TextStyle(fontSize: 14))),
            if (trailingText != null)
              Text(trailingText, style: const TextStyle(color: Colors.grey, fontSize: 14))
            else
              const Icon(Icons.chevron_right, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _settingsSwitch(IconData icon, String title, bool value, ValueChanged<bool> onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 22),
          const SizedBox(width: 15),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 14))),
          Switch(
            value: value,
            onChanged: onChanged,
            activeThumbColor: Colors.grey,
            activeTrackColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 13: EDIT PROFILE
// ==================================================
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _nameController = TextEditingController(text: "Nad");
  final TextEditingController _dobController = TextEditingController();
  String _selectedCountry = "Malaysia";
  String _selectedFlag = "🇲🇾";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  void _showCountryPicker() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Country"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Text("🇲🇾"),
              title: const Text("Malaysia"),
              onTap: () {
                setState(() {
                  _selectedCountry = "Malaysia";
                  _selectedFlag = "🇲🇾";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Text("🇸🇬"),
              title: const Text("Singapore"),
              onTap: () {
                setState(() {
                  _selectedCountry = "Singapore";
                  _selectedFlag = "🇸🇬";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Text("🇮🇩"),
              title: const Text("Indonesia"),
              onTap: () {
                setState(() {
                  _selectedCountry = "Indonesia";
                  _selectedFlag = "🇮🇩";
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0),
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Icon Section
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: const Center(
                      child: Icon(Icons.person_outline, size: 80, color: Colors.black),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5E0E0),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(Icons.edit_note, size: 24, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // Name Field
            const Text('Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            _buildTextField(_nameController, "Name"),

            const SizedBox(height: 20),

            // Date of Birth Field
            const Text('Date of Birth', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: _buildTextField(_dobController, "DD/MM/YYYY"),
              ),
            ),

            const SizedBox(height: 20),

            // Country Field
            const Text('Country', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _showCountryPicker,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black45, width: 1),
                ),
                child: Row(
                  children: [
                    Text(_selectedFlag, style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        _selectedCountry,
                        style: const TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 50),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2196F3),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                ),
                child: const Text(
                  'Save And Continue',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black26),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.5),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black45, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black45, width: 1),
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 14: FAQ
// ==================================================
class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0),
      appBar: AppBar(
        title: const Text(
          'FAQ',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E5E5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _faqItem(
                'Q1. What is EasyQ?',
                'EasyQ is a cafeteria queue management app that helps users check queue status, place orders, and reduce waiting time at the cafeteria.',
              ),
              const Divider(height: 30),
              _faqItem(
                'Q2. How do I join a queue?',
                'Select your preferred cafeteria and tap the "Join Queue" button. Your queue number and estimated waiting time will appear automatically.',
              ),
              const Divider(height: 30),
              _faqItem(
                'Q3. Can I order food before arriving',
                'Yes. EasyQ allows users to pre-order food and pick it up when the order is ready.',
              ),
              const Divider(height: 30),
              _faqItem(
                'Q4. How do I know when my order is ready?',
                'You will receive a notification once your order is prepared and ready for pickup.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _faqItem(String question, String answer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          answer,
          style: const TextStyle(fontSize: 14, color: Colors.black54, height: 1.4),
        ),
      ],
    );
  }
}

// ==================================================
// MUKA 15: CHANGE PASSWORD
// ==================================================
class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool _oldPasswordVisible = false;
  bool _newPasswordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDECEC), // Light pinkish background
      appBar: AppBar(
        title: const Text(
          'Change Password',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFE5E0E0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Change Password',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                'your new password must be different from previous used passwords',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 30),

              // Old Password
              const Text('Old Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildPasswordField(
                obscureText: !_oldPasswordVisible,
                onToggle: () => setState(() => _oldPasswordVisible = !_oldPasswordVisible),
              ),
              const SizedBox(height: 20),

              // New Password
              const Text('New Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildPasswordField(
                obscureText: !_newPasswordVisible,
                onToggle: () => setState(() => _newPasswordVisible = !_newPasswordVisible),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4, left: 4),
                child: Text('• Must be at least 8 characters.', style: TextStyle(fontSize: 12, color: Colors.black54)),
              ),
              const SizedBox(height: 20),

              // Confirm Password
              const Text('Confirm Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildPasswordField(
                obscureText: !_confirmPasswordVisible,
                onToggle: () => setState(() => _confirmPasswordVisible = !_confirmPasswordVisible),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4, left: 4),
                child: Text('• Both passwords must match.', style: TextStyle(fontSize: 12, color: Colors.black54)),
              ),
              const SizedBox(height: 40),

              // Reset Password Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2196F3),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({required bool obscureText, required VoidCallback onToggle}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
            color: Colors.black,
            size: 20,
          ),
          onPressed: onToggle,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black45),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black45),
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 16: ABOUT US
// ==================================================
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0),
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E5E5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(text: 'About '),
                    TextSpan(text: 'EasyQ', style: TextStyle(color: Color(0xFFE91E63))),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'EasyQ is a smart cafeteria queue management application designed to make food ordering faster, easier, and more organized for students and customers. The app helps users avoid long waiting lines by allowing them to view menus, place orders, and monitor queue status directly from their mobile devices.\n\nEasyQ aims to create a more efficient, convenient, and modern food ordering system for both customers and cafeteria staff.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.5),
              ),
              const SizedBox(height: 40),
              const Text(
                'Our Platform:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              _platformItem(Icons.music_note, 'EasyQ67z'),
              const SizedBox(height: 15),
              _platformItem(Icons.camera_alt_outlined, 'EasyQ67z'),
              const SizedBox(height: 15),
              _platformItem(Icons.language, 'www.EasyQ.com'),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _platformItem(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30),
        const SizedBox(width: 15),
        Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    );
  }
}

// ==================================================
// MUKA 17: CHANGE EMAIL
// ==================================================
class ChangeEmailPage extends StatelessWidget {
  const ChangeEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDECEC), // Light pinkish background
      appBar: AppBar(
        title: const Text(
          'Change Email',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFE5E0E0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Change Email',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Old Email
              const Text('Old Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(),
              const SizedBox(height: 20),

              // New Email
              const Text('New Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(),
              const SizedBox(height: 20),

              // Confirm New Email
              const Text('Confirm New Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(),
              const SizedBox(height: 60),

              // Change Email Button
              Center(
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2196F3),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Change Email',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black45),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black45),
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 18: REPORT PROBLEM
// ==================================================
class ReportProblemPage extends StatefulWidget {
  const ReportProblemPage({super.key});

  @override
  State<ReportProblemPage> createState() => _ReportProblemPageState();
}

class _ReportProblemPageState extends State<ReportProblemPage> {
  bool _hasAttachment = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E0E0),
      appBar: AppBar(
        title: const Text(
          'Report A Problem',
          style: TextStyle(color: Color(0xFF6D5D5D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E0E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFFDECEC),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black26),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Describe the problem you have encountered. Specific details are encouraged.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: '(Apps buggy, payment doesn’t work, system doesn’t respond, etc.)',
                  hintStyle: const TextStyle(color: Colors.black26, fontSize: 14),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black45),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black45),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image Preview Placeholder
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      color: _hasAttachment ? Colors.grey.shade300 : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: _hasAttachment
                        ? const Center(child: Icon(Icons.image, color: Colors.black45))
                        : null,
                  ),
                  // Attach file button
                  OutlinedButton.icon(
                    onPressed: () => setState(() => _hasAttachment = !_hasAttachment),
                    icon: const Icon(Icons.attach_file, color: Colors.black45, size: 20),
                    label: const Text('Attach file', style: TextStyle(color: Colors.black45)),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      side: const BorderSide(color: Colors.black26),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Center(
                child: const Text(
                  '• Your feedback mean alot to us!',
                  style: TextStyle(color: Colors.black45, fontSize: 13),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2196F3),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}