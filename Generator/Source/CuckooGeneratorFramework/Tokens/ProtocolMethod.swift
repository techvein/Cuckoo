//
//  ProtocolMethod.swift
//  CuckooGenerator
//
//  Created by Filip Dolnik on 30.05.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public struct ProtocolMethod: Method {
    public let name: String
    public let accessibility: Accessibility
    public let returnSignature: ReturnSignature
    public let range: CountableRange<Int>
    public let nameRange: CountableRange<Int>
    public let parameters: [MethodParameter]
    public let attributes: [Attribute]
    public let genericParameters: [GenericParameter]
    
    public var isOptional: Bool {
        return attributes.map { $0.kind }.contains(.optional)
    }
    public var isOverriding: Bool {
        return false
    }
}
