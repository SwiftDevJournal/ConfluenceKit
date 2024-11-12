// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CustomContentCommentModel: Codable {
    /// ID of the comment.
    public var id: String?
    /// The status of the content.
    public var status: ContentStatus?
    /// Title of the comment.
    public var title: String?
    /// ID of the custom content containing the comment.
    public var customContentID: String?
    public var version: Version?
    /// Contains fields for each representation type requested.
    public var body: BodySingle?
    public var links: CommentLinks?

    public init(id: String? = nil, status: ContentStatus? = nil, title: String? = nil, customContentID: String? = nil, version: Version? = nil, body: BodySingle? = nil, links: CommentLinks? = nil) {
        self.id = id
        self.status = status
        self.title = title
        self.customContentID = customContentID
        self.version = version
        self.body = body
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.status = try values.decodeIfPresent(ContentStatus.self, forKey: "status")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.customContentID = try values.decodeIfPresent(String.self, forKey: "customContentId")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
        self.body = try values.decodeIfPresent(BodySingle.self, forKey: "body")
        self.links = try values.decodeIfPresent(CommentLinks.self, forKey: "_links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(customContentID, forKey: "customContentId")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(links, forKey: "_links")
    }
}
