# ALSDK

AngkorLife 플랫폼 연동을 위한 iOS SDK입니다.

## Requirements

- iOS 15.0+
- Swift Package Manager

## Installation

Xcode → File → Add Package Dependencies

```
https://github.com/union-mobile-teamB/alsdk
```

## Usage

### Check if AngkorLife app is installed / AngkorLife 앱 설치 여부 확인

```swift
AuthController.shared.isAngkorLifeAppInstalled()
```

> **Note / 주의**
> 
> This method requires the following entry in the host app's `Info.plist`.
> Without it, the method will always return `false` regardless of whether the app is installed.
>
> 이 메서드를 사용하려면 호스트 앱의 `Info.plist`에 아래 항목을 추가해야 합니다.
> 추가하지 않으면 앱 설치 여부와 관계없이 항상 `false`를 반환합니다.
>
> ```xml
> <key>LSApplicationQueriesSchemes</key>
> <array>
>     <string>angkorLifeAuth</string>
> </array>
> ```

## License

Copyright © 2025 UnionMobile Inc. All rights reserved.

This SDK is proprietary software. Unauthorized copying, distribution, modification,
or use of this software, in whole or in part, without the express written permission
of UnionMobile Inc. is strictly prohibited.

