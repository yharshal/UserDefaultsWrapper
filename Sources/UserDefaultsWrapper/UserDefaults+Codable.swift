//
//  UserDefaults+Codable.swift
//  
//
//  Created by Harshal on 15/08/25.
//

import Foundation

extension UserDefaults {
    public func codable<T: Codable>(_ type: T.Type, forKey key: String) -> T? {
        guard let data: Data = data(forKey: key) else { return nil }
        return try? JSONDecoder().decode(T.self, from: data)
    }
    
    public func setCodable<T: Codable>(_ value: T, forKey key: String) {
        let data: Data? = try? JSONEncoder().encode(value)
        set(data, forKey: key)
    }
}
