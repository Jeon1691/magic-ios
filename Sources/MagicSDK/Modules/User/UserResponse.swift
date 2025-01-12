//
//  UserResponse.swift
//  Magic
//
//  Created by Jerry Liu on 3/16/20.
//  Copyright © 2020 Magic Labs Inc. All rights reserved.
//

import Foundation

public protocol MagicResponse: Codable {}

/// Get Id Token configuration
public struct UserInfo: MagicResponse {
    
    public let issuer: String?
    public let publicAddress: String?
    public let email: String?
    public let phoneNumber: String?
    public let isMfaEnabled: Bool
    public let recoveryFactors: [RecoveryFactor]
    
    public var description: String {
        return """
        issuer: \(issuer ?? "nil")
        publicAddress: \(publicAddress ?? "nil")
        email: \(email ?? "nil")
        phoneNumber: \(phoneNumber ?? "nil")
        isMfaEnabled: \(isMfaEnabled)
        recoveryFactors: \(recoveryFactors)
        """
    }
}
