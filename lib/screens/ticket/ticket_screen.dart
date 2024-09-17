import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: Stack(children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: AppStyles.headLineStyle1,
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  isColor: true,
                  ticket: ticketList[0],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: 'FlutterDB',
                          btmText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: '5221 36869',
                          btmText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: '2465 6589492',
                          btmText: 'Number of E-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: 'B45672',
                          btmText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: AppStyles.headLineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Payment Method',
                              style: AppStyles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnTextLayout(
                          topText: '\$ 249.99',
                          btmText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              //bottom of the ticket detail section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      barcode: Barcode.code128(),
                      data: 'https://dbestech.com',
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //colorful ticket
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                ),
              ))
        ]));
  }
}
