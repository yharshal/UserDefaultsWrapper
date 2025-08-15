//
//  UserDefaultsWrapper.swift
//
//
//  Created by Harshal on 15/08/25.
//

import Foundation

@propertyWrapper
public struct UserDefault<Value: UserDefaultsConvertible> {
    let key: String
    let defaultValue: Value
    let container: UserDefaults
    
    public init(key: String, defaultValue: Value, container: UserDefaults = .standard) {
        self.key = key
        self.defaultValue = defaultValue
        self.container = container
    }
    
    public var wrappedValue: Value {
        get {
            guard let storedValue = container.object(forKey: key) as? Value.UserDefaultType,
                  let value = Value.fromUserDefaults(storedValue) else
            {
                return defaultValue
            }
            return value
        }
        set {
            container.set(newValue.userDefaultsValue, forKey: key)
        }
    }
    
}
