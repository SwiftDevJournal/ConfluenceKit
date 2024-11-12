// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Contains fields for each representation type requested.
public struct CustomContentBodyBulk: Codable {
    public var raw: BodyType?
    public var storage: BodyType?
    public var atlasDocFormat: BodyType?

    public init(raw: BodyType? = nil, storage: BodyType? = nil, atlasDocFormat: BodyType? = nil) {
        self.raw = raw
        self.storage = storage
        self.atlasDocFormat = atlasDocFormat
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.raw = try values.decodeIfPresent(BodyType.self, forKey: "raw")
        self.storage = try values.decodeIfPresent(BodyType.self, forKey: "storage")
        self.atlasDocFormat = try values.decodeIfPresent(BodyType.self, forKey: "atlas_doc_format")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(raw, forKey: "raw")
        try values.encodeIfPresent(storage, forKey: "storage")
        try values.encodeIfPresent(atlasDocFormat, forKey: "atlas_doc_format")
    }
}