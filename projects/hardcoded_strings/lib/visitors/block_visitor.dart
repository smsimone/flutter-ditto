import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class HardcodedStringsVisitor extends RecursiveAstVisitor {
  HardcodedStringsVisitor({
    required this.onHardcodedStringFound,
    required this.onDittoTranslationFound,
  });

  void Function(Expression e) onHardcodedStringFound;
  void Function(Expression e) onDittoTranslationFound;

  bool _isHardcoded(Expression node) {
    if (node is StringLiteral) {
      final parent = node.parent;
      if (parent == null) return true;
      if (parent is! Expression) return false;
      return _isHardcoded(parent);
    } else {
      if (node is MethodInvocation) {
        if (node.methodName.name == 'translate') {
          onDittoTranslationFound(node);
          return false;
        }
        return true;
      } else {
        return true;
      }
    }
  }

  @override
  visitSimpleStringLiteral(SimpleStringLiteral node) {
    if (_isHardcoded(node)) {
      onHardcodedStringFound(node);
    }
    return super.visitSimpleStringLiteral(node);
  }
}
