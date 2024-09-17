import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

var appRoutes = {
  "/": (context) => const BottomNavBar(),
  "all_tickets": (context) => const AllTickets(),
  "all_hotels": (context) => const AllHotels(),
};
