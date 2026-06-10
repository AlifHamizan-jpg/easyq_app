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
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('User Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [IconButton(icon: const Icon(Icons.settings, color: Colors.black), onPressed: () => Navigator.pushNamed(context, '/settings'))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 10),
            const Text('Nadzha', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Text('nadzhaa254@gmail.com', style: TextStyle(fontSize: 12)),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(8)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('QUEUE SUMMARY', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Current Status: In Queue'),
                  Text('Last Visit: Cafeteria A'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(8)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ORDER HISTORY', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Chicken Rice - Completed'),
                  Text('Noodles - Completed'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 12: SETTINGS
// ==================================================
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Text('Account', style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(leading: const Icon(Icons.lock), title: const Text('Change Password'), onTap: () => Navigator.pushNamed(context, '/change-password')),
          ListTile(leading: const Icon(Icons.email), title: const Text('Change Email'), onTap: () => Navigator.pushNamed(context, '/change-email')),
          const SizedBox(height: 20),
          const Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(leading: const Icon(Icons.info), title: const Text('About Us'), onTap: () => Navigator.pushNamed(context, '/about-us')),
          ListTile(leading: const Icon(Icons.help), title: const Text('FAQ'), onTap: () => Navigator.pushNamed(context, '/faq')),
          ListTile(leading: const Icon(Icons.bug_report), title: const Text('Report Problem'), onTap: () => Navigator.pushNamed(context, '/report-problem')),
          const SizedBox(height: 20),
          SizedBox(width: double.infinity, child: TextButton(onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false), child: const Text('Log out', style: TextStyle(color: Colors.red)))),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA 13: EDIT PROFILE
// ==================================================
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40))),
            const SizedBox(height: 30),
            const Text('Name'),
            const TextField(decoration: InputDecoration(hintText: 'Your Name')),
            const SizedBox(height: 15),
            const Text('Email'),
            const TextField(decoration: InputDecoration(hintText: 'your@email.com')),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue, padding: const EdgeInsets.symmetric(vertical: 12)),
                child: const Text('Save'),
              ),
            ),
          ],
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
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('FAQ', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Q: What is EasyQ?', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('A: App to queue and order food easily.'),
            SizedBox(height: 15),
            Text('Q: How to use?', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('A: Select cafe, join queue, order.'),
          ],
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 15: CHANGE PASSWORD
// ==================================================
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('Change Password', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Old Password'),
            const TextField(obscureText: true),
            const SizedBox(height: 15),
            const Text('New Password'),
            const TextField(obscureText: true),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue, padding: const EdgeInsets.symmetric(vertical: 12)),
                child: const Text('Update Password'),
              ),
            ),
          ],
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
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('About Us', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EasyQ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 10),
            Text('EasyQ helps you skip long lines and order food easily from campus cafes.'),
            SizedBox(height: 20),
            Text('Version: 1.0.0'),
          ],
        ),
      ),
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
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('Change Email', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('New Email Address'),
            const TextField(decoration: InputDecoration(hintText: 'new@email.com')),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue, padding: const EdgeInsets.symmetric(vertical: 12)),
                child: const Text('Save Email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================================================
// MUKA 18: REPORT PROBLEM
// ==================================================
class ReportProblemPage extends StatelessWidget {
  const ReportProblemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEBCD),
      appBar: AppBar(
        title: const Text('Report Problem', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFFEBCD),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Describe your problem here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.symmetric(vertical: 12)),
                child: const Text('Submit Report'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}