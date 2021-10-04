import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';
import 'package:wallet_app/screens/history/components/date_widget.dart';
import 'package:wallet_app/screens/history/components/expense_and_income.dart';
import 'package:wallet_app/screens/history/components/line_chart.dart';
import 'package:wallet_app/screens/splash/splash_screen.dart';
import 'components/history_section.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var selectedIndex = 0;
  final List<String> date = ["Month", "Week", "Day"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          BackgroundColor(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpenseAndIncome(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          date.length,
                          (index) => DateWidget(
                            title: date[index],
                            isSelected: selectedIndex == index,
                            onTap: () {
                              print(index);
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  LineChartSample2(),
                  HistorySection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kBodyTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "History",
        style: TextStyle(
          color: kTitleTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert_rounded,
            color: kBodyTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
