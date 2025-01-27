// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ContentProperty: Codable {
    /// ID of the property
    public var id: String?
    /// Key of the property
    public var key: String?
    /// Value of the property. Must be a valid JSON value.
    public var value: AnyJSON?
    public var version: Version?

    public init(id: String? = nil, key: String? = nil, value: AnyJSON? = nil, version: Version? = nil) {
        self.id = id
        self.key = key
        self.value = value
        self.version = version
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.value = try values.decodeIfPresent(AnyJSON.self, forKey: "value")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(value, forKey: "value")
        try values.encodeIfPresent(version, forKey: "version")
    }
}
