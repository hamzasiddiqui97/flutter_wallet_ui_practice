import 'package:flutter/material.dart';
import 'package:wallet_app/utils/my_button.dart';
import 'package:wallet_app/utils/my_cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        child: const Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 29,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 29,
                  ))
            ],
          )),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // plus button at the top
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ]),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                const MyCard(
                  balance: 5250.20,
                  cardNumber: 3245330412031233,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.lightBlue,
                ),
                MyCard(
                  balance: 55.20,
                  cardNumber: 5251120498001234,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.purple[200],
                ),
                // MyCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                //
                MyButton(
                    iconImagePath: "assets/sendmoney_3dollars_outputfile.png",
                    buttonText: 'Send'),

                MyButton(
                    iconImagePath: "assets/creditcard40000.png",
                    buttonText: 'Pay'),

                MyButton(
                    iconImagePath: "assets/paidbill.png", buttonText: 'Bills'),
              ],
            ),
          ),

          // column -> stats + transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                // statistics
                MyListTile(
                    iconImagePath: 'assets/statistics.png',
                    tileSubTitle: 'Payment and Income',
                    tileTitle: 'Statistics'),

                // transactions

                MyListTile(
                    iconImagePath: 'assets/transactions109561.png',
                    tileSubTitle: 'Transactions History',
                    tileTitle: 'Transactions'),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
