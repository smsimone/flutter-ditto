# hardcoded_strings

This is a linter built with [custom_lint](https://pub.dev/packages/custom_lint) which will find all the hardcoded strings inside your widget and the keys which are not contained inside [Ditto](https://dittowords.com).

## First run

To get the linter run you firstly have to download your localizations with

```shell
flutter pub run hardcoded_strings -a <YOUR-API-KEY>
```

and all the keys you have in your workspace will be downloaded in the file `ditto_keys.json` which will be read from the linter.

## Configuration

You can configure this linter by addind some keys inside your `analysis_options.yaml`. Available keys are listed down here, and all of them are optional.

```yaml
hardcoded_strings:
  # Integer value that defines the min length of the string to be evaluated
  min_lint_length: 0
  # All keys below accept values in (info, warning, error)
  lint_levels:
    # Specifies how should be considered the strings that are invalid Ditto keywords, i.e. the keys
    # not contained in the file generated during the first run
    invalid_ditto_keyword: error
    # Specifies how should be considered the hardcoded strings inside your widgets
    hardcoded_string: warning
```
