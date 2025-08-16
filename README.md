# dart-flutter-compat

A GitHub Action for checking that your Dart project is compatible with Flutter.

## Why?

Flutter [pins](https://dart.dev/go/sdk-version-pinning) the versions of some
packages. If your pure-Dart project requires a different version of such a
package then your project will not be usable in a Flutter project.

However it is difficult to keep up with Flutter's version pinning if your
project doesn't use Flutter!

## Configuration

- All input parameters of
  [subosito/flutter-action](https://github.com/subosito/flutter-action) are
  supported. Use e.g. `flutter-version` to use a specific Flutter version, or
  `channel` to keep up with a particular channel.
- Optionally set `pubspec` to the path to your `pubspec.yaml` file if it is not
  at the root of your repository.

```yaml
steps:
  - name: Clone repository
    uses: actions/checkout@v4
  - uses: amake/dart-flutter-compat@v0
    with:
      channel: stable
```
