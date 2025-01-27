// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SpaceRole: Codable {
    /// The identifier for the space role.
    public var id: String?
    /// The role type.
    public var type: RoleType?
    /// The display name for the space role.
    public var displayName: String?
    /// The description for the space role’s usage.
    public var description: String?
    /// The space permissions the space role is comprised of.
    public var spacePermissions: [String]?

    public init(id: String? = nil, type: RoleType? = nil, displayName: String? = nil, description: String? = nil, spacePermissions: [String]? = nil) {
        self.id = id
        self.type = type
        self.displayName = displayName
        self.description = description
        self.spacePermissions = spacePermissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.type = try values.decodeIfPresent(RoleType.self, forKey: "type")
        self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.spacePermissions = try values.decodeIfPresent([String].self, forKey: "spacePermissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(displayName, forKey: "displayName")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(spacePermissions, forKey: "spacePermissions")
    }
}
