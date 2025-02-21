# it_real_app

***********

## Autogeneration

- generate **freezed** files
- generate **getIt** files
- generate **json** files

```
fvm dart run build_runner build --delete-conflicting-outputs
```
***********

***********
## Generate loclization keys file

```
fvm dart run easy_localization:generate -S ./assets/translations --output-dir ./lib/presentation/shared/localization --output-file locale_keys.g.dart -f keys
```

***********
## Generate launcher icons

```
fvm dart run flutter_launcher_icons
```

after generation update web/favicon.png to a correct size

***********
## Use template from mason

- https://github.com/martynovb/my_mason_templates.git 

```
dart pub global activate mason_cli
```
add pub-cache to PATH if needed

```
mason add -g --git-url https://github.com/martynovb/my_mason_templates.git --git-path bricks/simple_responsive_future simple_responsive_future
```

```
mason make simple_responsive_future -o lib/presentation/feature/ --on-conflic[overwrite]
```
