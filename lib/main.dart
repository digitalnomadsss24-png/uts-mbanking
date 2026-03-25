import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 40, 16, 20),
            decoration: BoxDecoration(
              color: Colors.blue[800],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('BRI', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        Text('Hai, Gunawan', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Icon(Icons.headset_mic, color: Colors.white)
                  ],
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo Rekening Utama', style: TextStyle(color: Colors.white70)),
                      SizedBox(height: 10),
                      Row(
                        children: List.generate(6, (index) => Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: CircleAvatar(radius: 3, backgroundColor: Colors.white),
                        )),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Semua Rekeningmu', style: TextStyle(color: Colors.white)),
                          Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    topMenu(Icons.swap_horiz, 'Transfer'),
                    topMenu(Icons.account_balance_wallet, 'BRIVA'),
                    topMenu(Icons.account_balance, 'E-Wallet'),
                    topMenu(Icons.phone_android, 'Pulsa / Data'),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Text('Cari Fitur', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                gridMenu(Icons.add_circle, 'Top Up'),
                gridMenu(Icons.receipt_long, 'Tagihan'),
                gridMenu(Icons.atm, 'Setor & Tarik'),
                gridMenu(Icons.shopping_bag, 'Lifestyle'),
                gridMenu(Icons.qr_code, 'QRIS Transfer'),
                gridMenu(Icons.credit_card, 'Debit Virtual'),
                gridMenu(Icons.note, 'Catatan Keuangan'),
                gridMenu(Icons.trending_up, 'Investasi'),
                gridMenu(Icons.favorite, 'Donasi'),
                gridMenu(Icons.currency_exchange, 'Konversi Valas'),
                gridMenu(Icons.credit_card_outlined, 'Kartu Kredit'),
                gridMenu(Icons.security, 'Asuransi'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topMenu(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget gridMenu(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 5),
        Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
      ],
    );
  }
}
