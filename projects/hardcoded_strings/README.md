# hardcoded_strings

This is a linter built with [custom_lint](https://pub.dev/packages/custom_lint) which will find all the hardcoded strings inside your widget and the keys which are not contained inside [Ditto](https://dittowords.com).

## First run

To get the linter run you firstly have to download your localizations with

```shell
flutter pub run hardcoded_strings -a <YOUR-API-KEY>
```

and all the keys you have in your workspace will be downloaded in the file `ditto_keys.json` which will be read from the linter.
