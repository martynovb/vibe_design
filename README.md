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