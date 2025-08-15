//
//  Main.swift
//  
//
//  Created by Harshal on 15/08/25.
//

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

