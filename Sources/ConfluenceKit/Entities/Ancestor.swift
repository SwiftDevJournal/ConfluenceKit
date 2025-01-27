// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Ancestor: Codable {
    /// ID of the ancestor
    public var id: String?
    /// The type of ancestor.
    public var type: AncestorType?

    public init(id: String? = nil, type: AncestorType? = nil) {
        self.id = id
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.type = try values.decodeIfPresent(AncestorType.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(type, forKey: "type")
    }
}
