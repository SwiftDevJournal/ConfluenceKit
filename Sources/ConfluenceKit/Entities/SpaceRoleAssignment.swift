// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SpaceRoleAssignment: Codable {
    /// The principal of the role assignment.
    public var principal: Principal?
    /// The role to which the principal is assigned.
    public var roleID: String?

    public init(principal: Principal? = nil, roleID: String? = nil) {
        self.principal = principal
        self.roleID = roleID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.principal = try values.decodeIfPresent(Principal.self, forKey: "principal")
        self.roleID = try values.decodeIfPresent(String.self, forKey: "roleId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(principal, forKey: "principal")
        try values.encodeIfPresent(roleID, forKey: "roleId")
    }
}
