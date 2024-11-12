// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CommentLinks: Codable {
    /// Web UI link of the content.
    public var webui: String?

    public init(webui: String? = nil) {
        self.webui = webui
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.webui = try values.decodeIfPresent(String.self, forKey: "webui")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(webui, forKey: "webui")
    }
}
