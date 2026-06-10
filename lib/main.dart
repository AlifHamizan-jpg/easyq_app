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
        '/finance': (context) => const FinancePage(),
        '/cafe-list': (context) => const CafeListPage(),
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

// ==================================================
// MUKA 1: WELCOME
// ==================================================
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

// ==================================================
// MUKA 2: LOGIN PILIHAN
// ==================================================
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

// ==================================================
// MUKA 7: DASHBOARD
// ==================================================
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      appBar: AppBar(
        title: const Text('Home Dashboard', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFD2B48C),
        elevation: 0,
        actions: [
          const Text('Find Your Cafe', style: TextStyle(color: Colors.black)),
          IconButton(icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black), onPressed: () => Navigator.pushNamed(context, '/cart')),
          IconButton(icon: const Icon(Icons.person_outline, color: Colors.black), onPressed: () => Navigator.pushNamed(context, '/profile')),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const TextField(decoration: InputDecoration(hintText: 'Search Cafe', prefixIcon: Icon(Icons.search), border: InputBorder.none)),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(8)),
              child: const Center(child: Text('BUY 1 GET 1 FREE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Finance'), Text('RM 99.20', style: TextStyle(fontWeight: FontWeight.bold))],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _cafeCard('The Study Bistro', '20% OFF', Colors.green),
                _cafeCard('Campus Grub', 'FREE DELIVER', Colors.red),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() => _selectedIndex = i);
          if (i == 1) Navigator.pushNamed(context, '/cafe-list');
          if (i == 2) Navigator.pushNamed(context, '/finance');
        },
        backgroundColor: const Color(0xFFD2B48C),
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'Queue'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        ],
      ),
    );
  }

  Widget _cafeCard(String title, String tag, Color color) {
    return Container(
      width: 160,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 60, color: color.withOpacity(0.2), child: const Center(child: Icon(Icons.restaurant, size: 40))),
          Container(color: color, padding: const EdgeInsets.all(2), child: Text(tag, style: const TextStyle(color: Colors.white, fontSize: 10))),
          Padding(padding: const EdgeInsets.all(5), child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
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
        leading: const Icon(Icons.arrow_back, color: Colors.black),
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
// MUKA 9: FINANCE
// ==================================================
class FinancePage extends StatelessWidget {
  const FinancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      appBar: AppBar(
        title: const Text('Finance', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFD2B48C),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('easyQPay Wallet', style: TextStyle(fontSize: 12)),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
              child: const Text('RM 99.20', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _funcButton(Icons.arrow_upward, 'Top up'),
                _funcButton(Icons.qr_code, 'Scan'),
                _funcButton(Icons.send, 'Send'),
                _funcButton(Icons.download, 'Receive'),
              ],
            ),
            const SizedBox(height: 30),
            const Text('Recent Transactions', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _transaction('LAKSA', 'RM 6.00'),
            _transaction('ODEN', 'RM 18.00'),
            _transaction('BOBA', 'RM 5.00'),
          ],
        ),
      ),
    );
  }

  Widget _funcButton(IconData icon, String label) {
    return Column(
      children: [
        Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)), child: Icon(icon)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 11)),
      ],
    );
  }

  Widget _transaction(String name, String amount) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(name), Text(amount)],
      ),
    );
  }
}

// ==================================================
// MUKA 10: CAFE LIST
// ==================================================
class CafeListPage extends StatelessWidget {
  const CafeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B48C),
      appBar: AppBar(
        title: const Text('Cafe List', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFD2B48C),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(15),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          _cafeItem('The Studio Bistro', '20% OFF', Colors.green),
          _cafeItem('Pasta Project', 'Student Discount', Colors.blue),
          _cafeItem('Bubble Waffle', 'Combo Deals', Colors.orange),
          _cafeItem('Asia Street', 'Weekend Special', Colors.red),
        ],
      ),
    );
  }

  Widget _cafeItem(String title, String tag, Color tagColor) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(color: tagColor.withOpacity(0.2), borderRadius: const BorderRadius.vertical(top: Radius.circular(8))),
            child: Stack(
              children: [
                const Center(child: Icon(Icons.restaurant, size: 40)),
                Positioned(top: 5, left: 5, child: Container(color: tagColor, padding: const EdgeInsets.all(2), child: Text(tag, style: const TextStyle(color: Colors.white, fontSize: 10)))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const Text('OPEN 8AM - 10PM', style: TextStyle(fontSize: 10)),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('RM 6.00'), Icon(Icons.add_circle, color: Color(0xFF00B4A0))],
                ),
              ],
            ),
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