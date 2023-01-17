import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class HardcodedStringsVisitor extends RecursiveAstVisitor {
  HardcodedStringsVisitor({required this.onHardcodedStringFound});

  void Function(Expression e) onHardcodedStringFound;

  // @override
  // visitNamedExpression(NamedExpression node) {
  //   final expr = node.expression;
  //   final type = expr.staticType;
  //   if (type != null) {
  //     for (var element in expr.childEntities) {
  //       if (element is ArgumentList) {
  //         final args = element.arguments;
  //         for (var e in args) {
  //           if (e is SimpleStringLiteral) {
  //             onHardcodedStringFound(e);
  //           }
  //         }
  //       }
  //     }
  //   }
  //   return super.visitNamedExpression(node);
  // }

  bool _isHardcoded(Expression node) {
    if (node is StringLiteral) {
      final parent = node.parent;
      if (parent == null) return true;
      if (parent is! Expression) return false;
      return _isHardcoded(parent);
    } else {
      //log('Checking node: $node', name: '_isHardcoded');
      if (node is MethodInvocation) {
        //log('Method invocation: $node', name: 'switch');
        if (node.methodName.name == 'translate') {
          //log('Node "$node" is not hardcoded', name: 'flutter_ditto');
          return false;
        }
        return true;
      } else {
        //log('Node "$node" is hardcoded', name: 'flutter_ditto');
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
