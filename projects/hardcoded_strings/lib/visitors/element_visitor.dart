import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class RecursiveVariableDeclarationVisitor extends RecursiveAstVisitor {
  RecursiveVariableDeclarationVisitor({required this.onBuildMethodVisit});

  void Function(MethodDeclaration node) onBuildMethodVisit;

  @override
  visitMethodDeclaration(MethodDeclaration node) {
    if (node.name.lexeme == 'build') {
      onBuildMethodVisit(node);
    }
    return super.visitMethodDeclaration(node);
  }
}
