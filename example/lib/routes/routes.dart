import 'package:beamer/beamer.dart';
import 'package:example/ui/home/home_screen.dart';
import 'package:flutter/widgets.dart';

final BeamerDelegate<BeamState> routerDelegate = BeamerDelegate<BeamState>(
  locationBuilder: SimpleLocationBuilder(
    routes: <String, Widget Function(BuildContext, BeamState)>{
      // Return either Widgets or BeamPages if more customization is needed
      '/': (BuildContext context, BeamState state) => const HomeScreen(),
      // '/books': (context, state) => BooksScreen(),
      // '/books/:bookId': (context, state) {
      //   // Take the parameter of interest from BeamState
      //   final bookId = state.pathParameters['bookId']!;
      //   // Return a Widget or wrap it in a BeamPage for more flexibility
      //   return BeamPage(
      //     key: ValueKey('book-$bookId'),
      //     title: 'A Book #$bookId',
      //     popToNamed: '/',
      //     type: BeamPageType.scaleTransition,
      //     child: BookDetailsScreen(bookId),
      //   );
    },
  ),
);
