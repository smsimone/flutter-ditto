library hardcoded_strings;

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:hardcoded_strings/block_visitor.dart';
import 'package:hardcoded_strings/element_visitor.dart';

PluginBase createPlugin() => _HardcodedStringsLinter();

class _HardcodedStringsLinter extends PluginBase {
  @override
  Stream<Lint> getLints(ResolvedUnitResult unit) async* {
    if (unit.path.contains('test')) return;

    final elements = <MethodDeclaration>[];

    unit.unit.visitChildren(
      RecursiveVariableDeclarationVisitor(
        onBuildMethodVisit: (e) => elements.add(e),
      ),
    );

    final hardcoded = <Expression>[];

    elements
        .map((e) => e.childEntities)
        .expand((element) => [...element])
        .whereType<BlockFunctionBody>()
        .forEach(
          (e) => e.visitChildren(
            HardcodedStringsVisitor(onHardcodedStringFound: hardcoded.add),
          ),
        );

    for (var element in hardcoded) {
      yield Lint(
        code: 'hardcoded_string',
        message: 'Do not use hardcoded Strings in your widgets',
        location: unit.lintLocationFromOffset(
          element.offset,
          length: element.length,
        ),
        severity: LintSeverity.warning,
      );
    }
  }
}
