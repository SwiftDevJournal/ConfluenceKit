// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Details about data policies.
public struct DataPolicyMetadata: Codable {
    /// Whether the workspace contains any content blocked for (inaccessible to) the requesting client application.
    public var isAnyContentBlocked: Bool?

    public init(isAnyContentBlocked: Bool? = nil) {
        self.isAnyContentBlocked = isAnyContentBlocked
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isAnyContentBlocked = try values.decodeIfPresent(Bool.self, forKey: "anyContentBlocked")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isAnyContentBlocked, forKey: "anyContentBlocked")
    }
}
