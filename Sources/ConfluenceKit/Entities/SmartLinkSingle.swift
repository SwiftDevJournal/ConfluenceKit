// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SmartLinkSingle: Codable {
    /// ID of the Smart Link in the content tree.
    public var id: String?
    /// The content type of the object.
    public var type: String?
    /// The status of the content.
    public var status: ContentStatus?
    /// Title of the Smart Link in the content tree.
    public var title: String?
    /// ID of the parent content, or null if there is no parent content.
    public var parentID: String?
    /// Content type of the parent, or null if there is no parent.
    public var parentType: ParentContentType?
    /// Position of the Smart Link within the given parent page tree.
    public var position: Int32?
    /// The account ID of the user who created this Smart Link in the content tree originally.
    public var authorID: String?
    /// The account ID of the user who owns this Smart Link in the content tree.
    public var ownerID: String?
    /// Date and time when the Smart Link in the content tree was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
    public var createdAt: Date?
    /// The embedded URL of the Smart Link. If the Smart Link does not have an embedded URL, this property will not be included in the response.
    public var embedURL: String?
    public var version: Version?
    public var links: SmartLinkLinks?

    public init(id: String? = nil, type: String? = nil, status: ContentStatus? = nil, title: String? = nil, parentID: String? = nil, parentType: ParentContentType? = nil, position: Int32? = nil, authorID: String? = nil, ownerID: String? = nil, createdAt: Date? = nil, embedURL: String? = nil, version: Version? = nil, links: SmartLinkLinks? = nil) {
        self.id = id
        self.type = type
        self.status = status
        self.title = title
        self.parentID = parentID
        self.parentType = parentType
        self.position = position
        self.authorID = authorID
        self.ownerID = ownerID
        self.createdAt = createdAt
        self.embedURL = embedURL
        self.version = version
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.status = try values.decodeIfPresent(ContentStatus.self, forKey: "status")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
        self.parentType = try values.decodeIfPresent(ParentContentType.self, forKey: "parentType")
        self.position = try values.decodeIfPresent(Int32.self, forKey: "position")
        self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
        self.ownerID = try values.decodeIfPresent(String.self, forKey: "ownerId")
        self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
        self.embedURL = try values.decodeIfPresent(String.self, forKey: "embedUrl")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
        self.links = try values.decodeIfPresent(SmartLinkLinks.self, forKey: "_links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(parentID, forKey: "parentId")
        try values.encodeIfPresent(parentType, forKey: "parentType")
        try values.encodeIfPresent(position, forKey: "position")
        try values.encodeIfPresent(authorID, forKey: "authorId")
        try values.encodeIfPresent(ownerID, forKey: "ownerId")
        try values.encodeIfPresent(createdAt, forKey: "createdAt")
        try values.encodeIfPresent(embedURL, forKey: "embedUrl")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(links, forKey: "_links")
    }
}
