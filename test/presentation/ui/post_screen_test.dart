import 'package:assessment/domain/entity/post/post.dart';
import 'package:assessment/presentation/ui/screen/post_screen.dart';
import 'package:assessment/util/dependency_injection.dart';
import 'package:assessment/util/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    DependencyInjection.initAllDependencies();
  });

  tearDown(() {
    GetIt.I.reset();
  });

  testWidgets(
    'title and body initial value must be empty',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PostScreen(
            extras: PostScreenExtras(
              null,
              PostAction.edit,
            ),
          ),
        ),
      );
      final formFinder = find.byType(TextFormField);

      String? titleValue;
      await tester.runAsync(() async {
        titleValue =
            tester.widget<TextFormField>(formFinder.first).initialValue;
      });

      String? bodyValue;
      await tester.runAsync(() async {
        bodyValue = tester.widget<TextFormField>(formFinder.first).initialValue;
      });

      expect(titleValue, "");
      expect(bodyValue, "");
    },
  );

  testWidgets(
    'UI must contain title and body',
    (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: PostScreen(
            extras: PostScreenExtras(
                const Post(userId: 1, title: "title test", body: "body test"),
                PostAction.edit)),
      ));
      final titleFinder = find.text("title test");
      final bodyFinder = find.text("body test");
      expect(titleFinder, findsOneWidget);
      expect(bodyFinder, findsOneWidget);
    },
  );
  testWidgets(
    'UI must contain title error and body error',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PostScreen(
            extras: PostScreenExtras(
              const Post(),
              PostAction.add,
            ),
          ),
        ),
      );

      // find forms
      var formFinder = find.byType(TextFormField);
      expect(formFinder, findsNWidgets(2));

      // enter text
      await tester.enterText(formFinder.first, "ab");
      await tester.enterText(formFinder.last, "abc");

      // check errors
      await tester.pump(const Duration(seconds: 1));
      final titleErrorFinder =
          find.text("Title must be at least 3 characters long");
      final bodyErrorFinder =
          find.text("Body must be at least 6 characters long");
      expect(titleErrorFinder, findsOneWidget);
      expect(bodyErrorFinder, findsOneWidget);
    },
  );
}
