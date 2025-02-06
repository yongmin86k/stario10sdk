# StarIO10 swift package

This package is for fixing the issue when there is conflicts with [`react-native-star-io10`](https://github.com/star-micronics/react-native-star-io10) package.

## Requirements

| package                                                                            | version   |
| ---------------------------------------------------------------------------------- | --------- |
| [react-native-star-io10](https://github.com/star-micronics/react-native-star-io10) | `v1.8.0+` |
| [patch-package](https://github.com/ds300/patch-package)                            | `v8.0.0+` |

## Installation

1. Install the packages

```shell
npm i react-native-star-io10 @yongmin86k/star-io-10
```

```shell
npm i patch-package -D
```

2. Modify podspec file in `react-native-star-io10`

   - Open `react-native-star-io10` podspec file in following path.

     _{{YOUR_PROJECT_FOLDER}}/node_modules/react-native-star-io10/react-native-star-io10.podspec_

   - Remove `s.vendored_frameworks` and add `s.dependency`

   ```diff
   s.requires_arc = true

   s.dependency "React"
   +  s.dependency "StarIO10"

   # ...
   # s.dependency "..."

   - s.vendored_frameworks = 'ios/libs/StarIO10.xcframework'
   ```

3. Modify the podspec file in the conflicting package as above.

4. Create patch files.

```shell
npm run patch-package react-native-star-io10
```

And create the patch file for the conflicting package as well.

```shell
npm run patch-package {{package-name}}
```

---

## License

MIT
