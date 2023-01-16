import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class HardcodedStringsVisitor extends RecursiveAstVisitor {
  HardcodedStringsVisitor({required this.onHardcodedStringFound});

  void Function(Expression e) onHardcodedStringFound;

  @override
  visitNamedExpression(NamedExpression node) {
    final expr = node.expression;
    final type = expr.staticType;
    if (type != null) {
      final name = type.getDisplayString(withNullability: false);
      if (name == 'Text' && type.element != null) {
        for (var element in expr.childEntities) {
          if (element is ArgumentList) {
            final args = element.arguments;
            for (var e in args) {
              if (e is SimpleStringLiteral) {
                onHardcodedStringFound(e);
              }
            }
          }
        }
      }
    }

    return super.visitNamedExpression(node);
  }
}
