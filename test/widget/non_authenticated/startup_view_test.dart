import 'package:automatic_takeout_order/constants/keys.dart';
import 'package:automatic_takeout_order/constants/route_name.dart';
import 'package:automatic_takeout_order/view/non_authenticated/register_bottom_sheet.dart';
import 'package:automatic_takeout_order/view/non_authenticated/register/register_view.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized()
      as TestWidgetsFlutterBinding;

  group('StartupView', () {
    testWidgets('RegisterBottomSheet', (tester) async {
      await binding.setSurfaceSize(const Size(1080, 2160));
      await tester.pumpWidget(
        MaterialApp(
          routes: <String, WidgetBuilder>{
            RouteName.register: (BuildContext context) => RegisterView(),
          },
          home: Scaffold(
            body: StartupView(),
          ),
        ),
      );
      await tester.tap(find.byKey(Keys.start));
      await tester.pumpAndSettle();

      // RegisterBottomSheet should be seen when the button was tapped
      expect(find.byType(RegisterBottomSheet), findsOneWidget);

      await tester.tap(find.byKey(Keys.registerByEmail));
      await tester.pumpAndSettle();

      expect(find.byType(RegisterView), findsOneWidget);
    });
  });
}
