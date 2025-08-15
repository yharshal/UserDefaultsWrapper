# UserDefaultsWrapper

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyharshal%2FUserDefaultsWrapper%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/yharshal/UserDefaultsWrapper) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyharshal%2FUserDefaultsWrapper%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/yharshal/UserDefaultsWrapper)

A Swift package that provides a convenient property wrapper for `UserDefaults`.

## Installation

Add the package via Swift Package Manager:

```swift
// In Xcode: File > Add Packages > enter your repo URL
dependencies: [
    .package(url: "https://github.com/yharshal/UserDefaultsWrapper.git", from: "1.0.0")
]
```

## Usage

```swift

import UserDefaultsWrapper
import Foundation

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

@main
struct ExampleApp {
    
    static func main() {
        UserProfile.hasCompletedOnboarding = true
        UserProfile.userRatings = 4.5
        UserProfile.userID = UUID()
        UserProfile.username = "Harshal"
        
        print("Welcome: \(UserProfile.username)")
    }
}

```

