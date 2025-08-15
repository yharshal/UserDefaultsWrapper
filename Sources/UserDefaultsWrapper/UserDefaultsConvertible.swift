//
//  UserDefaultsConvertible.swift
//
//
//  Created by Harshal on 15/08/25.
//

import Foundation

public protocol UserDefaultsConvertible {
    associatedtype UserDefaultType
    
    static func fromUserDefaults(_ value: UserDefaultType) -> Self?
    var userDefaultsValue: UserDefaultType { get }
}

extension String: UserDefaultsConvertible {
    
    public typealias UserDefaultType = String
    
    public static func fromUserDefaults(_ value: String) -> String? {
        value
    }
    
    public var userDefaultsValue: String {
        self
    }
    
}

extension UUID: UserDefaultsConvertible {
    
    public typealias UserDefaultType = String
    
    public static func fromUserDefaults(_ value: String) -> UUID? {
        UUID(uuidString: value)
    }
    
    public var userDefaultsValue: String {
        self.uuidString
    }
    
}

extension Int: UserDefaultsConvertible {
    
    public typealias UserDefaultType = Int
    
    public static func fromUserDefaults(_ value: Int) -> Int? {
        value
    }
    
    public var userDefaultsValue: Int {
        self
    }
    
}

extension Double: UserDefaultsConvertible {
    
    public typealias UserDefaultType = Double
    
    public static func fromUserDefaults(_ value: Double) -> Double? {
        value
    }
    
    public var userDefaultsValue: Double {
        self
    }
    
}

extension Bool: UserDefaultsConvertible {
    
    public typealias UserDefaultType = Bool
    
    public static func fromUserDefaults(_ value: Bool) -> Bool? {
        value
    }
    
    public var userDefaultsValue: Bool {
        self
    }
    
}

public struct CodableWrapper<T: Codable>: UserDefaultsConvertible {
    
    public typealias UserDefaultsType = Data
    
    public let value : T
    
    public static func fromUserDefaults(_ value: UserDefaultsType) -> CodableWrapper<T>? {
        guard let decoded: T = try? JSONDecoder().decode(T.self, from: value) else { return nil }
        return CodableWrapper(value: decoded)
    }
    
    public init(value: T) {
        self.value = value
    }
    
    public var userDefaultsValue: Data {
        (try? JSONEncoder().encode(value)) ?? Data()
    }
    
}
