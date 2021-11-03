import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testes_unitarios_flutter/screens/home_page.dart';

void main() {
  testWidgets('Validate basic widgets', (tester) async {
    //infla o widget a ser testado
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    //o title é a busca por esse texto na HomePage
    final title = find.text('Website Update');
    //o expect precisa de dois parâmetros, atual que é o restultado da busca, ou seja, o title,
    //e o matcher é o que quero encontrar, nesse caso exatamente 1 widget com esse texto
    expect(title, findsOneWidget);

    final appBar = find.byType(AppBar);
    expect(appBar, findsOneWidget);

    //o find retorna um Finder não um widget, então não tenho como acessar as propriedades do elemento através dele
    //nesse caso preciso fazer um cast através do tester para acessar as propriedades da AppBar
    final appBarWidget = tester.widget<AppBar>(appBar);
    expect(appBarWidget.actions!.length, 2);

    final listViewCopy = find.byKey(const Key('list-view-copy'));
    expect(listViewCopy, findsOneWidget);
  });
}
