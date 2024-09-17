import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // blue card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeSecondColor),
                            ),
                          )
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                          text: ticket['to']['code'], isColor: isColor),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                              text: ticket['from']['name'], isColor: isColor)),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['flying_time'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket['to']['name'],
                            isColor: isColor,
                            align: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isColor: isColor,
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(
                    isColor: isColor,
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket['date'],
                        btmText: 'DATE',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        btmText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['number'].toString(),
                        btmText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
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
