import 'package:flutter/material.dart';

void main() {
  runApp(const EasyQApp());
}

class EasyQApp extends StatefulWidget {
  const EasyQApp({super.key});

  @override
  State<EasyQApp> createState() => _EasyQAppState();
}

class _EasyQAppState extends State<EasyQApp> {
  String _userName = "Nadzha";
  String _userDOB = "27/06/2007";
  String _userFlag = "🇲🇾";
  String _userEmail = "nadzhaa254@gmail.com";
  String? _userProfileImage;

  void _updateProfile(String name, String dob, String flag, String? image) {
    setState(() {
      _userName = name;
      _userDOB = dob;
      _userFlag = flag;
      _userProfileImage = image;
    });
  }

  void _updateEmail(String newEmail) {
    setState(() {
      _userEmail = newEmail;
    });
  }

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
        '/profile': (context) => UserProfilePage(
              userName: _userName,
              userDOB: _userDOB,
              userFlag: _userFlag,
              userEmail: _userEmail,
              userProfileImage: _userProfileImage,
            ),
        '/settings': (context) => const SettingsPage(),
        '/edit-profile': (context) => EditProfilePage(
              currentName: _userName,
              currentDOB: _userDOB,
              currentFlag: _userFlag,
              currentProfileImage: _userProfileImage,
              onSave: _updateProfile,
            ),
        '/faq': (context) => const FAQPage(),
        '/change-password': (context) => const ChangePasswordPage(),
        '/about-us': (context) => const AboutUsPage(),
        '/change-email': (context) => ChangeEmailPage(
              currentEmail: _userEmail,
              onSave: _updateEmail,
            ),
        '/report-problem': (context) => const ReportProblemPage(),
        '/cafe-detail': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return CafeDetailPage(cafeData: args);
        },
        '/wallet': (context) => const WalletPage(),
        '/order-summary': (context) => const OrderSummaryPage(),
        '/checkout': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          final isPayAtCounter = args?['isPayAtCounter'] ?? false;
          return CheckoutPage(isPayAtCounter: isPayAtCounter);
        },
        '/payment': (context) => const PaymentPage(),
        '/order-receipt': (context) => const OrderReceiptPage(),
        '/pickup-counter': (context) => const PickupCounterPage(),
        '/queue-progress': (context) => const QueueProgressPage(),
        '/notifications': (context) => const NotificationPage(),
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
      "name": "The Studio Bistro - University Campus",
      "tag": "20% off all meals",
      "tagColor": Colors.green,
      "rating": 4.9,
      "distance": "100m",
      "image": "https://images.unsplash.com/photo-1554118811-1e0d58224f24?q=80&w=400&auto=format&fit=crop",
      "isAd": false,
      "hours": "9.00 A.M -10.00 P.M",
      "promoBottom": "20% off all meals",
      "recommendations": [
        {"name": "SUSHI", "price": "RM 10.00", "image": "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?q=80&w=200&auto=format&fit=crop"},
      ]
    },
    {
      "name": "Campus Grub Quick & Easy",
      "tag": "FREE DELIVERY",
      "tagColor": Colors.red,
      "rating": 4.7,
      "distance": "50m",
      "image": "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=400&auto=format&fit=crop",
      "isAd": true,
      "hours": "9.00 A.M -10.30 P.M",
      "promoBottom": "FREE DELIVERY",
      "recommendations": [
        {"name": "ODEN", "price": "RM 9.00", "image": "https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?q=80&w=200&auto=format&fit=crop"},
      ]
    },
    {
      "name": "Bubble Waffle Hub - Student Centre",
      "tag": "Combo Deals",
      "tagColor": Colors.orange,
      "rating": 4.9,
      "distance": "200m",
      "image": "assets/images/bubble_waffle_hub.jpeg",
      "isAd": false,
      "hours": "9.00 A.M -10.00 P.M",
      "promoBottom": "Combo Deals",
      "recommendations": [
        {"name": "WAFFLE", "price": "RM 6.00", "image": "assets/images/bubble_waffle_hub.jpeg"},
        {"name": "BOBA MILK TEA", "price": "RM 6.00", "image": "assets/images/brown_sugar_boba.jpeg"},
      ]
    },
    {
      "name": "Pasta Project University Walk",
      "tag": "Student Discount",
      "tagColor": Colors.blue,
      "rating": 4.8,
      "distance": "300m",
      "image": "https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=400&auto=format&fit=crop",
      "isAd": false,
      "hours": "11.00 A.M -11.00 P.M",
      "promoBottom": "Student Discount",
      "recommendations": [
        {"name": "PASTA", "price": "RM 6.00", "image": "https://images.unsplash.com/photo-1563379091339-03b21bc4a4f8?q=80&w=200&auto=format&fit=crop"},
      ]
    },
    {
      "name": "Energy Boost Cafe Gym Complex",
      "tag": "Fresh & Healthy",
      "tagColor": Colors.green,
      "rating": 4.6,
      "distance": "150m",
      "image": "assets/images/energy_boost_cafe.jpg",
      "isAd": true,
      "hours": "9.00 A.M -9.00 P.M",
      "promoBottom": "Fresh & Healthy",
      "recommendations": [
        {"name": "ENERGY DRINK", "price": "RM 2.00", "image": "assets/images/red_bull.jpeg"},
      ]
    },
    {
      "name": "Asia Street Eats - Market Square",
      "tag": "Weekend Special",
      "tagColor": Colors.red,
      "rating": 4.7,
      "distance": "200m",
      "image": "assets/images/asian_street_eats.jpeg",
      "isAd": false,
      "hours": "9.00 A.M -9.00 P.M",
      "promoBottom": "Weekend Special",
      "recommendations": [
        {"name": "LAKSA", "price": "RM 6.00", "image": "assets/images/laksa.jpeg"},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER SECTION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Find Your Cafe Shop\nanywhere',
                    style: TextStyle(
                      color: Color(0xFF6D4C41), // Adjusted to match the brown-ish tone in the image
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      _headerIconButton(Icons.shopping_cart_outlined, () => Navigator.pushNamed(context, '/cart')),
                      const SizedBox(width: 8),
                      _headerIconButton(Icons.person_outline, () => Navigator.pushNamed(context, '/profile')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // SEARCH BAR
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Cafe',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF5D4037),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // PROMO SECTION
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF800080), // Purple from image
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('Promo', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8E1),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/buy_one_free_one.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.black.withValues(alpha: 0.3), Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.black45,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          children: [
                            const TextSpan(
                              text: 'BUY 1 GET 1 FREE\n',
                              style: TextStyle(fontSize: 26, letterSpacing: 1.2),
                            ),
                            TextSpan(
                              text: 'BOBA MILK TEA OFFER',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.amber.shade300,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // WALLET SECTION
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/wallet'),
                child: Container(
                  width: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Wallet', style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('RM 99.20', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          Icon(Icons.account_balance_wallet, size: 16, color: Colors.black87),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 22),

              // CAFE LIST GRID
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cafeList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 18,
                  childAspectRatio: 0.75,
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
                    isAd: cafe["isAd"],
                    fullData: cafe,
                  );
                },
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 85,
        decoration: const BoxDecoration(
          color: Color(0xFFE5E0E0),
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _navItem(Icons.home, "Home", _selectedIndex == 0, () {
              setState(() => _selectedIndex = 0);
            }),
            _navItem(Icons.group_outlined, "Queue", _selectedIndex == 1, () {
              setState(() => _selectedIndex = 1);
              Navigator.pushNamed(context, '/queue-progress');
            }),
            _navItem(Icons.notifications_none, "Notification", _selectedIndex == 2, () {
              setState(() => _selectedIndex = 2);
              Navigator.pushNamed(context, '/notifications');
            }),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.transparent,
              shape: BoxShape.circle,
              boxShadow: isActive ? [const BoxShadow(color: Colors.black12, blurRadius: 4)] : [],
            ),
            child: Icon(icon, color: Colors.black, size: 28),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
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
    bool isAd = false,
    required Map<String, dynamic> fullData,
  }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/cafe-detail', arguments: fullData),
      child: Container(
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
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: imagePath.startsWith('assets/')
                    ? Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.broken_image, color: Colors.grey),
                        ),
                      )
                    : Image.network(
                        imagePath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.broken_image, color: Colors.grey),
                        ),
                      ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11), maxLines: 2, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 12),
                      const SizedBox(width: 3),
                      Text(rating.toString(), style: const TextStyle(fontSize: 10)),
                      const Spacer(),
                      const Icon(Icons.restaurant_menu, size: 12, color: Colors.grey),
                      const SizedBox(width: 2),
                      Text(distance, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _headerIconButton(IconData icon, VoidCallback onTap) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.black, size: 20),
        onPressed: onTap,
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
      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: const BoxDecoration(
                color: Color(0xFFE5E0E0),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Your Cart',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF5D4037)),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Edit', style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                ],
              ),
            ),

            // CART ITEMS LIST
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  _cartItem('BOBA MILK TEA', 'RM 6.00', 2, 'buy one get free one', 'assets/images/brown_sugar_boba.jpeg'),
                  _cartItem('ODEN', 'RM 14.40', 2, 'discount 40% on second order', 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?q=80&w=200&auto=format&fit=crop'),
                  _cartItem('SUSHI', 'RM 16.00', 2, 'add-on deals at lower prices', 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?q=80&w=200&auto=format&fit=crop'),
                  _cartItem('PASTA', 'RM 6.00', 1, 'add-on deals at lower prices', 'https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=200&auto=format&fit=crop'),
                  _cartItem('ENERGY DRINK', 'RM 6.00', 3, 'add-on deals at lower prices', 'assets/images/red_bull.jpeg'),
                  _cartItem('WAFFLE', 'RM 6.00', 1, 'add-on deals at lower prices', 'assets/images/bubble_waffle_hub.jpeg'),
                  _cartItem('LAKSA', 'RM 6.00', 1, 'add-on deals at lower prices', 'assets/images/laksa.jpeg'),
                ],
              ),
            ),

            // VOUCHER SECTION
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              color: const Color(0xFFF5F5F5),
              child: Row(
                children: [
                  const Icon(Icons.confirmation_number_outlined, size: 24),
                  const SizedBox(width: 10),
                  const Text('Voucher / Discount', style: TextStyle(fontSize: 14)),
                  const Spacer(),
                  Text('select or enter code >', style: TextStyle(color: Colors.grey.shade400, fontSize: 12)),
                ],
              ),
            ),

            // FOOTER CHECKOUT
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.black12)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('All', style: TextStyle(fontSize: 14)),
                  const Spacer(),
                  const Text('RM 60.40', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange)),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/order-summary'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('check out', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cartItem(String name, String price, int qty, String promo, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E0E0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.fastfood, size: 40, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF5D4037))),
                        const Text('Edit', style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.blue.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(price, style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.remove, size: 20),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.blue.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text('$qty', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.add, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Icon(Icons.shopping_bag_outlined, size: 18, color: Colors.orange),
              const SizedBox(width: 8),
              Expanded(child: Text(promo, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
              const Icon(Icons.chevron_right, size: 18),
            ],
          ),
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
      backgroundColor: const Color(0xFFD2B48C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFE5E0E0),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left, size: 30),
                      onPressed: () => Navigator.pop(context),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Wallet',
                              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF5D4037)),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'do more with your money with\neasyQFinance',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // Mimic graph and coins with icons
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(width: 10, height: 20, color: Colors.orange.shade300),
                                const SizedBox(width: 4),
                                Container(width: 10, height: 35, color: Colors.amber.shade400),
                                const SizedBox(width: 4),
                                Container(width: 10, height: 25, color: Colors.teal.shade700),
                                const SizedBox(width: 4),
                                const Icon(Icons.trending_up, color: Colors.teal, size: 40),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // CARDS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // GX Account Card
                    Expanded(
                      child: Container(
                        height: 200,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF6A1B9A), Color(0xFF311B92)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Active', style: TextStyle(color: Colors.white70, fontSize: 12)),
                            const Text('GX Account', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 15),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(color: const Color(0xFFE91E63), borderRadius: BorderRadius.circular(4)),
                              child: const Text('NEW', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                            ),
                            const Spacer(),
                            const Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.account_balance, color: Colors.white38, size: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    // easyQPay Wallet Card
                    Expanded(
                      child: Container(
                        height: 200,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2E7D32),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('easyQPay Wallet', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            const Text('RM 99.20', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            const Spacer(),
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(Icons.savings, color: Colors.white70, size: 60),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // TRANSACTIONS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent transactions -',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'monospace'),
                    ),
                    const SizedBox(height: 25),
                    _transactionItem('LAKSA', 'RM 6.00'),
                    _transactionItem('ODEN X2', 'RM 18.00'),
                    _transactionItem('BOBA MILK TEA', 'RM 5.00'),
                    _transactionItem('ENERGY DRINK', 'RM 3.00'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _transactionItem(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'monospace')),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF64B5F6),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'PAYMENT COMPLETED',
              style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Text(amount, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'monospace')),
        ],
      ),
    );
  }
}
// ==================================================
// MUKA 11: USER PROFILE
// ==================================================
class UserProfilePage extends StatelessWidget {
  final String userName;
  final String userDOB;
  final String userFlag;
  final String userEmail;
  final String? userProfileImage;

  const UserProfilePage({
    super.key,
    required this.userName,
    required this.userDOB,
    required this.userFlag,
    required this.userEmail,
    this.userProfileImage,
  });

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
                    Text(
                      userDOB,
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: userProfileImage == null || userProfileImage!.isEmpty
                      ? const Icon(Icons.person_outline, size: 60, color: Colors.black)
                      : ClipOval(
                          child: userProfileImage!.startsWith('http')
                              ? Image.network(userProfileImage!, fit: BoxFit.cover)
                              : Image.asset(userProfileImage!, fit: BoxFit.cover),
                        ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Ikon bendera (guna emoji atau icon)
                    Text('$userFlag ', style: const TextStyle(fontSize: 18)),
                    Text(
                      userName,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
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
                  child: Text(
                    userEmail,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
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
                    _notificationCard('assets/images/bubble_waffle_hub.jpeg', 'Order received at 10.30 a.m'),
                    const SizedBox(height: 15),
                    _notificationCard('assets/images/brown_sugar_boba.jpeg', 'Order received at 10.30 a.m'),
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
            child: imagePath.startsWith('assets/')
                ? Image.asset(
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
                  )
                : Image.network(
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
  final String currentName;
  final String currentDOB;
  final String currentFlag;
  final String? currentProfileImage;
  final Function(String, String, String, String?) onSave;

  const EditProfilePage({
    super.key,
    required this.currentName,
    required this.currentDOB,
    required this.currentFlag,
    this.currentProfileImage,
    required this.onSave,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _dobController;
  late String _selectedCountry;
  late String _selectedFlag;
  late String? _selectedProfileImage;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.currentName);
    _dobController = TextEditingController(text: widget.currentDOB);
    _selectedFlag = widget.currentFlag;
    _selectedProfileImage = widget.currentProfileImage;
    // Map flag back to country name for initial state
    if (_selectedFlag == "🇸🇬") {
      _selectedCountry = "Singapore";
    } else if (_selectedFlag == "🇮🇩") {
      _selectedCountry = "Indonesia";
    } else {
      _selectedCountry = "Malaysia";
    }
  }

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

  void _showImagePicker() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Profile Picture"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text("Default Icon"),
                onTap: () {
                  setState(() => _selectedProfileImage = null);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=100&auto=format&fit=crop'),
                ),
                title: const Text("Girl Avatar"),
                onTap: () {
                  setState(() => _selectedProfileImage = 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=100&auto=format&fit=crop');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=100&auto=format&fit=crop'),
                ),
                title: const Text("Guy Avatar"),
                onTap: () {
                  setState(() => _selectedProfileImage = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=100&auto=format&fit=crop');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
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
              child: GestureDetector(
                onTap: _showImagePicker,
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: _selectedProfileImage == null || _selectedProfileImage!.isEmpty
                          ? const Icon(Icons.person_outline, size: 80, color: Colors.black)
                          : ClipOval(
                              child: _selectedProfileImage!.startsWith('http')
                                  ? Image.network(_selectedProfileImage!, fit: BoxFit.cover)
                                  : Image.asset(_selectedProfileImage!, fit: BoxFit.cover),
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
                onPressed: () {
                  widget.onSave(
                    _nameController.text,
                    _dobController.text,
                    _selectedFlag,
                    _selectedProfileImage,
                  );
                  Navigator.pop(context);
                },
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
                child: Text('* Must be at least 8 characters.', style: TextStyle(fontSize: 12, color: Colors.black54)),
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
                child: Text('* Both passwords must match.', style: TextStyle(fontSize: 12, color: Colors.black54)),
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
class ChangeEmailPage extends StatefulWidget {
  final String currentEmail;
  final Function(String) onSave;

  const ChangeEmailPage({
    super.key,
    required this.currentEmail,
    required this.onSave,
  });

  @override
  State<ChangeEmailPage> createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {
  final TextEditingController _oldEmailController = TextEditingController();
  final TextEditingController _newEmailController = TextEditingController();
  final TextEditingController _confirmEmailController = TextEditingController();
  String? _errorMessage;

  void _handleChangeEmail() {
    setState(() {
      _errorMessage = null;
    });

    final oldEmail = _oldEmailController.text.trim();
    final newEmail = _newEmailController.text.trim();
    final confirmEmail = _confirmEmailController.text.trim();

    if (oldEmail != widget.currentEmail) {
      setState(() {
        _errorMessage = "unmatched old email";
      });
      return;
    }

    if (newEmail.isEmpty) {
       setState(() {
        _errorMessage = "Please enter a new email";
      });
      return;
    }

    if (newEmail != confirmEmail) {
      setState(() {
        _errorMessage = "New emails do not match";
      });
      return;
    }

    widget.onSave(newEmail);
    Navigator.pop(context);
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Email updated successfully')),
    );
  }

  @override
  void dispose() {
    _oldEmailController.dispose();
    _newEmailController.dispose();
    _confirmEmailController.dispose();
    super.dispose();
  }

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

              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),

              // Old Email
              const Text('Old Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(_oldEmailController),
              const SizedBox(height: 20),

              // New Email
              const Text('New Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(_newEmailController),
              const SizedBox(height: 20),

              // Confirm New Email
              const Text('Confirm New Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              _buildEmailField(_confirmEmailController),
              const SizedBox(height: 60),

              // Change Email Button
              Center(
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: _handleChangeEmail,
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

  Widget _buildEmailField(TextEditingController controller) {
    return TextField(
      controller: controller,
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
                  hintText: "(Apps buggy, payment doesn't work, system doesn't respond, etc.)",
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
                  '* Your feedback mean alot to us!',
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

// ==================================================
// MUKA 19: CAFE DETAIL (Representative of Page 4/5)
// ==================================================
class CafeDetailPage extends StatelessWidget {
  final Map<String, dynamic> cafeData;
  const CafeDetailPage({super.key, required this.cafeData});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> recommendations = cafeData['recommendations'] ?? [];

    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER IMAGE SECTION
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: (cafeData['image'] ?? '').startsWith('assets/')
                        ? Image.asset(
                            cafeData['image'],
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey.shade300,
                              child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                            ),
                          )
                        : Image.network(
                            cafeData['image'] ?? 'https://images.unsplash.com/photo-1554118811-1e0d58224f24?q=80&w=1000&auto=format&fit=crop',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey.shade300,
                              child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                            ),
                          ),
                  ),
                  // Floating Back Button
                  Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.chevron_left, color: Colors.black, size: 35),
                    ),
                  ),
                  // Top Promo Tag
                  Positioned(
                    top: 15,
                    left: 50,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: cafeData['tagColor'] ?? Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(cafeData['tag'] ?? 'Promo', style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // Bottom Image Tag
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      color: Colors.orange,
                      child: Text(
                        cafeData['promoBottom'] ?? 'Offer',
                        style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              // CAFE NAME AND STATUS
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E0E0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            cafeData['name'] ?? 'Cafe Name',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF5D4037)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(color: const Color(0xFFFDECEC), borderRadius: BorderRadius.circular(4)),
                              child: const Text('OPEN', style: TextStyle(color: Colors.black87, fontSize: 10, fontWeight: FontWeight.bold)),
                            ),
                            Text(cafeData['hours'] ?? '9.00 A.M - 10.00 P.M', textAlign: TextAlign.right, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text('Recommend For You', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(height: 15),
                    
                    // RECOMMENDED ITEMS ROW
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: recommendations.map((item) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: _recommendedItem(item['name'], item['price'], item['image']),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _recommendedItem(String name, String price, String imagePath) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipOval(
            child: Container(
              width: 60,
              height: 60,
              color: Colors.grey.shade200,
              child: imagePath.startsWith('assets/')
                  ? Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.fastfood, color: Colors.grey),
                    )
                  : Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.fastfood, color: Colors.grey),
                    ),
            ),
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
          Text(price, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.orange)),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
            child: const Icon(Icons.add, color: Colors.white, size: 16),
          ),
        ],
      ),
    );
  }
}


// ==================================================
// MUKA: ORDER SUMMARY
// ==================================================
class OrderSummaryPage extends StatefulWidget {
  const OrderSummaryPage({super.key});

  @override
  State<OrderSummaryPage> createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  bool isTakeAway = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D4037), // Dark brown background matching the image
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Header with Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            
            // Main Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E5E5), // Light cream color
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "ORDER SUMMARY",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037),
                      ),
                    ),
                    const SizedBox(height: 30),
                    
                    // Items List
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          _orderItem(
                            "WAFFLE",
                            "Bubble Waffle\nHub - Student\nCenter",
                            "RM 10.00",
                            "1",
                            "assets/images/bubble_waffle_hub.jpeg",
                           ),
                          const Divider(color: Colors.black26),
                          _orderItem(
                            "PASTA",
                            "Pasta Project -\nUniversity Walk",
                            "RM 6.00",
                            "1",
                            "https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=200&auto=format&fit=crop",
                          ),
                        ],
                      ),
                    ),
                    
                    // Buttons
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: _toggleButton(
                                  "Take Away",
                                  isTakeAway,
                                  () => setState(() => isTakeAway = true),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: _toggleButton(
                                  "Dine In",
                                  !isTakeAway,
                                  () => setState(() => isTakeAway = false),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          SizedBox(
                            width: 160,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () => Navigator.pushNamed(context, "/payment"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFBCAAA4), // Beige/Grey from image
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                elevation: 0,
                              ),
                              child: const Text(
                                "Choose Service",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderItem(String name, String sub, String price, String qty, String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: img.startsWith('assets/')
                ? Image.asset(
                    img,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 80,
                      height: 80,
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.fastfood),
                    ),
                  )
                : Image.network(
                    img,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 80,
                      height: 80,
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.fastfood),
                    ),
                  ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.orange)),
                const SizedBox(height: 2),
                Text(sub, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black87)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.orange)),
              const SizedBox(height: 10),
              Text(qty, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _toggleButton(String label, bool isSelected, VoidCallback onTap) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xFFE53935) : const Color(0xFFBCAAA4), // Red if selected, else beige
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// ==================================================
// MUKA: CHECKOUT
// ==================================================
class CheckoutPage extends StatelessWidget {
  final bool isPayAtCounter;
  const CheckoutPage({super.key, required this.isPayAtCounter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D4037), // Dark brown background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Header with Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            
            // Main Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E5E5), // Light cream color
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    // Green Checkmark Icon
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.check, color: Colors.white, size: 60),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Order Successful",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037),
                      ),
                    ),
                    const SizedBox(height: 60),
                    
                    // Buttons List
                    _successButton(Icons.print, "Print", onTap: () {
                      Navigator.pushNamed(context, '/order-receipt');
                    }),
                    
                    if (isPayAtCounter) ...[
                      const SizedBox(height: 20),
                      _successButton(Icons.access_time, "Pickup at counter", onTap: () {
                        Navigator.pushNamed(context, '/pickup-counter');
                      }),
                    ],
                    
                    const SizedBox(height: 20),
                    _successButton(Icons.home, "Back to home", onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/dashboard", (route) => false);
                    }),
                    
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _successButton(IconData icon, String title, {VoidCallback? onTap}) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFBCAAA4), // Beige
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 30),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// ==================================================
// MUKA: PAYMENT PAGE
// ==================================================
class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D4037), // Dark brown background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Header with Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            
            // Main Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E5E5), // Light cream color
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037),
                      ),
                    ),
                    const SizedBox(height: 40),
                    
                    // Payment Options
                    _paymentOption(Icons.receipt_long, "Pay At Counter", onTap: () {
                      Navigator.pushNamed(context, '/checkout', arguments: {'isPayAtCounter': true});
                    }),
                    _paymentOption(Icons.qr_code_scanner, "QR Payment", onTap: () {
                      Navigator.pushNamed(context, '/checkout', arguments: {'isPayAtCounter': false});
                    }),
                    _paymentOption(Icons.credit_card, "Credit Card", subtitle: "mastercard", onTap: () {
                      Navigator.pushNamed(context, '/checkout', arguments: {'isPayAtCounter': false});
                    }),
                    _paymentOption(Icons.credit_card, "Debit Card", subtitle: "VISA", onTap: () {
                      Navigator.pushNamed(context, '/checkout', arguments: {'isPayAtCounter': false});
                    }),
                    _paymentOption(Icons.payment, "PayPal", onTap: () {
                      Navigator.pushNamed(context, '/checkout', arguments: {'isPayAtCounter': false});
                    }),
                    
                    const Spacer(),
                    const Divider(color: Colors.black26, thickness: 1),
                    const SizedBox(height: 30),
                    
                    // Cancel Button
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE53935), // Red
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          elevation: 0,
                        ),
                        child: const Text(
                          "Cancel Payment",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _paymentOption(IconData icon, String title, {String? subtitle, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        height: 45,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFBCAAA4), // Beige
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            Icon(icon, color: Colors.black87, size: 24),
            const SizedBox(width: 15),
            Expanded(
              child: Row(
                children: [
                  if (subtitle != null) ...[
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
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
// MUKA: ORDER RECEIPT
// ==================================================
class OrderReceiptPage extends StatelessWidget {
  const OrderReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D4037),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E5E5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Order Receipt",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF5D4037)),
                    ),
                    const SizedBox(height: 20),
                    // Table Header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("FOOD", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          Text("QTY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          Text("PRICE(RM)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 1, indent: 20, endIndent: 20),
                    
                    // Items
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          _receiptItem("WAFFLE", "1", "RM 10.00", "assets/images/bubble_waffle_hub.jpeg"),
                          const Divider(color: Colors.black26),
                          _receiptItem("PASTA", "1", "RM 6.00", "https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=200&auto=format&fit=crop"),
                        ],
                      ),
                    ),
                    
                    // Footer
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("QTY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Text("2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("total (RM)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Text("RM 16.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.orange)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _receiptItem(String name, String qty, String price, String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: img.startsWith('assets/')
                ? Image.asset(img, width: 60, height: 60, fit: BoxFit.cover)
                : Image.network(img, width: 60, height: 60, fit: BoxFit.cover),
          ),
          Text(qty, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.orange)),
        ],
      ),
    );
  }
}

// ==================================================
// MUKA: PICKUP COUNTER
// ==================================================
class PickupCounterPage extends StatelessWidget {
  const PickupCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D4037),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E5E5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "Pickup counter",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF5D4037)),
                    ),
                    const SizedBox(height: 20),
                    // Table Header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Food", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text("Num counter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 1, indent: 20, endIndent: 20),
                    
                    // Items
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          _counterItem("assets/images/bubble_waffle_hub.jpeg", "1"),
                          const Divider(color: Colors.black26),
                          _counterItem("https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=200&auto=format&fit=crop", "3"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _counterItem(String img, String counter) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: img.startsWith('assets/')
                ? Image.asset(img, width: 80, height: 80, fit: BoxFit.cover)
                : Image.network(img, width: 80, height: 80, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(counter, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          ),
        ],
      ),
    );
  }
}



// ==================================================
// MUKA: QUEUE PROGRESS SCREEN
// ==================================================
class QueueProgressPage extends StatelessWidget {
  const QueueProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C), // Brownish background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Header with Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            
            // Main Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(25, 10, 25, 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9C4), // Cream color
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _queueStep(
                        icon: Icons.edit_note,
                        title: "ORDER PLACED",
                        subtitle: "Nadzha order on\n10.00 a.m",
                        isFirst: true,
                      ),
                      _dottedLine(),
                      _queueStep(
                        icon: Icons.hourglass_empty,
                        title: "PREPARING ORDER",
                        subtitle: "Preparing order\non 10.00 a.m-\n10.30 a.m",
                      ),
                      _dottedLine(),
                      _queueStep(
                        icon: Icons.room_service, // Food dome/cloche
                        title: "FOOD RESERVED",
                        subtitle: "Est time 10.40 a.m",
                        isLast: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _customBottomNav(context, 1),
    );
  }

  Widget _queueStep({
    required IconData icon,
    required String title,
    required String subtitle,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(icon, size: 55, color: Colors.black),
          ],
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _dottedLine() {
    return Padding(
      padding: const EdgeInsets.only(left: 27), // Align with center of icon
      child: Column(
        children: List.generate(5, (index) {
          return Container(
            width: 2,
            height: 10,
            margin: const EdgeInsets.symmetric(vertical: 3),
            color: Colors.black45,
          );
        }),
      ),
    );
  }

  Widget _customBottomNav(BuildContext context, int activeIndex) {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
        color: Color(0xFFE5E0E0),
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _navItem(Icons.home_outlined, "Home", activeIndex == 0, () {
            Navigator.pushNamedAndRemoveUntil(context, "/dashboard", (route) => false);
          }),
          _navItem(Icons.group, "Queue", activeIndex == 1, () {}),
          _navItem(Icons.notifications_none, "Notification", activeIndex == 2, () {}),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.transparent,
              shape: BoxShape.circle,
              boxShadow: isActive ? [const BoxShadow(color: Colors.black12, blurRadius: 4)] : [],
            ),
            child: Icon(icon, color: Colors.black, size: 28),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}



// ==================================================
// MUKA: NOTIFICATION PAGE
// ==================================================
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C), // Tan background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // Header
            Center(
              child: const Text(
                "NOTIFICATION",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D4037),
                ),
              ),
            ),
            const SizedBox(height: 40),
            
            // Status Info Card
            _gradientInfoBox([
              "Current Status: In QUEUE / None",
              "Last Visit: Cafeteria A",
              "Total Queue: 8 min",
            ]),
            
            const SizedBox(height: 80),
            
            // Completed Orders Card
            _gradientInfoBox([
              "Chicken Rice - Completed",
              "Noodles - Completed",
              "Burger - Completed",
            ]),
            
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: _customBottomNav(context, 2),
    );
  }

  Widget _gradientInfoBox(List<String> lines) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xFF64B5F6), Color(0xFF81D4FA)], // Shades of blue
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: lines.map((line) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Text(
            line,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        )).toList(),
      ),
    );
  }

  Widget _customBottomNav(BuildContext context, int activeIndex) {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
        color: Color(0xFFE5E0E0),
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _navItem(Icons.home_outlined, "Home", activeIndex == 0, () {
            Navigator.pushNamedAndRemoveUntil(context, "/dashboard", (route) => false);
          }),
          _navItem(Icons.group_outlined, "Queue", activeIndex == 1, () {
             Navigator.pushNamed(context, "/queue-progress");
          }),
          _navItem(Icons.notifications, "Notification", activeIndex == 2, () {}),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.transparent,
              shape: BoxShape.circle,
              boxShadow: isActive ? [const BoxShadow(color: Colors.black12, blurRadius: 4)] : [],
            ),
            child: Icon(icon, color: Colors.black, size: 28),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

