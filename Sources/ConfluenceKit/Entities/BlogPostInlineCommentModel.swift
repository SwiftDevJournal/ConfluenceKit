// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BlogPostInlineCommentModel: Codable {
    /// ID of the comment.
    public var id: String?
    /// The status of the content.
    public var status: ContentStatus?
    /// Title of the comment.
    public var title: String?
    /// ID of the blog post the comment is in.
    public var blogPostID: String?
    public var version: Version?
    /// Contains fields for each representation type requested.
    public var body: BodyBulk?
    /// Inline comment resolution status
    public var resolutionStatus: InlineCommentResolutionStatus?
    public var properties: InlineCommentProperties?
    public var links: CommentLinks?

    public init(id: String? = nil, status: ContentStatus? = nil, title: String? = nil, blogPostID: String? = nil, version: Version? = nil, body: BodyBulk? = nil, resolutionStatus: InlineCommentResolutionStatus? = nil, properties: InlineCommentProperties? = nil, links: CommentLinks? = nil) {
        self.id = id
        self.status = status
        self.title = title
        self.blogPostID = blogPostID
        self.version = version
        self.body = body
        self.resolutionStatus = resolutionStatus
        self.properties = properties
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.status = try values.decodeIfPresent(ContentStatus.self, forKey: "status")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
        self.body = try values.decodeIfPresent(BodyBulk.self, forKey: "body")
        self.resolutionStatus = try values.decodeIfPresent(InlineCommentResolutionStatus.self, forKey: "resolutionStatus")
        self.properties = try values.decodeIfPresent(InlineCommentProperties.self, forKey: "properties")
        self.links = try values.decodeIfPresent(CommentLinks.self, forKey: "_links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(blogPostID, forKey: "blogPostId")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(resolutionStatus, forKey: "resolutionStatus")
        try values.encodeIfPresent(properties, forKey: "properties")
        try values.encodeIfPresent(links, forKey: "_links")
    }
}
