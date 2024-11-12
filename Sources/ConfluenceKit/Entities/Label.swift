// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Label: Codable {
    /// ID of the label.
    public var id: String?
    /// Name of the label.
    public var name: String?
    /// Prefix of the label.
    public var prefix: String?

    public init(id: String? = nil, name: String? = nil, prefix: String? = nil) {
        self.id = id
        self.name = name
        self.prefix = prefix
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.prefix = try values.decodeIfPresent(String.self, forKey: "prefix")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(prefix, forKey: "prefix")
    }
}