# UserDefaultsWrapper

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyharshal%2FUserDefaultsWrapper%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/yharshal/UserDefaultsWrapper) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyharshal%2FUserDefaultsWrapper%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/yharshal/UserDefaultsWrapper)

A Swift package that provides a convenient property wrapper for `UserDefaults`.

- ✅ Type-safe access to `UserDefaults`
- ✅ Easy to use with `@UserDefault`
- ✅ No boilerplate needed
- ✅ Supports Primitive Types
    - Int
    - Bool
    - String
    - Double
- ✅ UUID for ID
- ✅ Codable object
- ✅ Default Value Support

Purpose is to encapsulate the getter and setter logic for user defaults, and offer a clean structure.

## Installation

Add the package via Swift Package Manager:

```swift
// In Xcode: File > Add Packages > enter your repo URL
dependencies: [
    .package(url: "https://github.com/yharshal/UserDefaultsWrapper.git", from: "1.0.0")
]
```

## Usage

### Import package

```swift

import UserDefaultsWrapper

```

### Define properties using the @UserDefault wrapper:

```swift

struct UserProfile {
    
    @UserDefault(key: "username", defaultValue: "Guest")
    static var username: String
    
    @UserDefault(key: "launchCount", defaultValue: 0)
    static var launchCount: Int

    @UserDefault(key: "userRatings", defaultValue: 4.0)
    static var userRatings: Double

    @UserDefault(key: "userID", defaultValue: UUID())
    static var userID: UUID

    @UserDefault(key: "hasCompletedOnboarding", defaultValue: true)
    static var hasCompletedOnboarding: Bool
}
```

### Access defaut value:

```swift

print("Welcome: \(UserProfile.username)") // Guest

```

### Update Value:

```swift

UserProfile.username = "Harshal"
print("Welcome: \(UserProfile.username)") // Harshal

```

### Running the Example

- This package includes an example executable target.
- Run it locally with:

  ```
  
  swift run UserDefaultsWrapperExample
  
  ```
  
  - It will demonstrate property wrapper in action

