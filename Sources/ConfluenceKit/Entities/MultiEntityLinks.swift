// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct MultiEntityLinks: Codable {
    /// Used for pagination. Contains the relative URL for the next set of results, using a cursor query parameter.
    /// This property will not be present if there is no additional data available.
    public var next: String?
    /// Base url of the Confluence site.
    public var base: String?

    public init(next: String? = nil, base: String? = nil) {
        self.next = next
        self.base = base
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.next = try values.decodeIfPresent(String.self, forKey: "next")
        self.base = try values.decodeIfPresent(String.self, forKey: "base")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(next, forKey: "next")
        try values.encodeIfPresent(base, forKey: "base")
    }
}
