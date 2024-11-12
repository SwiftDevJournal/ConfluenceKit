// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PageSingle: Codable {
    /// ID of the page.
    public var id: String?
    /// The status of the content.
    public var status: ContentStatus?
    /// Title of the page.
    public var title: String?
    /// ID of the space the page is in.
    public var spaceID: String?
    /// ID of the parent page, or null if there is no parent page.
    public var parentID: String?
    /// Content type of the parent, or null if there is no parent.
    public var parentType: ParentContentType?
    /// Position of child page within the given parent page tree.
    public var position: Int32?
    /// The account ID of the user who created this page originally.
    public var authorID: String?
    /// The account ID of the user who owns this page.
    public var ownerID: String?
    /// The account ID of the user who owned this page previously, or null if there is no previous owner.
    public var lastOwnerID: String?
    /// Date and time when the page was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
    public var createdAt: Date?
    public var version: Version?
    /// Contains fields for each representation type requested.
    public var body: BodySingle?
    public var labels: Labels?
    public var properties: Properties?
    public var operations: Operations?
    public var likes: Likes?
    public var versions: Versions?
    /// Whether the page has been favorited by the current user.
    public var isFavoritedByCurrentUser: Bool?
    public var links: AbstractPageLinks?

    public struct Labels: Codable {
        public var results: [Label]?
        public var meta: OptionalFieldMeta?
        public var links: OptionalFieldLinks?

        public init(results: [Label]? = nil, meta: OptionalFieldMeta? = nil, links: OptionalFieldLinks? = nil) {
            self.results = results
            self.meta = meta
            self.links = links
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.results = try values.decodeIfPresent([Label].self, forKey: "results")
            self.meta = try values.decodeIfPresent(OptionalFieldMeta.self, forKey: "meta")
            self.links = try values.decodeIfPresent(OptionalFieldLinks.self, forKey: "_links")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(results, forKey: "results")
            try values.encodeIfPresent(meta, forKey: "meta")
            try values.encodeIfPresent(links, forKey: "_links")
        }
    }

    public struct Properties: Codable {
        public var results: [ContentProperty]?
        public var meta: OptionalFieldMeta?
        public var links: OptionalFieldLinks?

        public init(results: [ContentProperty]? = nil, meta: OptionalFieldMeta? = nil, links: OptionalFieldLinks? = nil) {
            self.results = results
            self.meta = meta
            self.links = links
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.results = try values.decodeIfPresent([ContentProperty].self, forKey: "results")
            self.meta = try values.decodeIfPresent(OptionalFieldMeta.self, forKey: "meta")
            self.links = try values.decodeIfPresent(OptionalFieldLinks.self, forKey: "_links")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(results, forKey: "results")
            try values.encodeIfPresent(meta, forKey: "meta")
            try values.encodeIfPresent(links, forKey: "_links")
        }
    }

    public struct Operations: Codable {
        public var results: [Operation]?
        public var meta: OptionalFieldMeta?
        public var links: OptionalFieldLinks?

        public init(results: [Operation]? = nil, meta: OptionalFieldMeta? = nil, links: OptionalFieldLinks? = nil) {
            self.results = results
            self.meta = meta
            self.links = links
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.results = try values.decodeIfPresent([Operation].self, forKey: "results")
            self.meta = try values.decodeIfPresent(OptionalFieldMeta.self, forKey: "meta")
            self.links = try values.decodeIfPresent(OptionalFieldLinks.self, forKey: "_links")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(results, forKey: "results")
            try values.encodeIfPresent(meta, forKey: "meta")
            try values.encodeIfPresent(links, forKey: "_links")
        }
    }

    public struct Likes: Codable {
        public var results: [Like]?
        public var meta: OptionalFieldMeta?
        public var links: OptionalFieldLinks?

        public init(results: [Like]? = nil, meta: OptionalFieldMeta? = nil, links: OptionalFieldLinks? = nil) {
            self.results = results
            self.meta = meta
            self.links = links
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.results = try values.decodeIfPresent([Like].self, forKey: "results")
            self.meta = try values.decodeIfPresent(OptionalFieldMeta.self, forKey: "meta")
            self.links = try values.decodeIfPresent(OptionalFieldLinks.self, forKey: "_links")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(results, forKey: "results")
            try values.encodeIfPresent(meta, forKey: "meta")
            try values.encodeIfPresent(links, forKey: "_links")
        }
    }

    public struct Versions: Codable {
        public var results: [Version]?
        public var meta: OptionalFieldMeta?
        public var links: OptionalFieldLinks?

        public init(results: [Version]? = nil, meta: OptionalFieldMeta? = nil, links: OptionalFieldLinks? = nil) {
            self.results = results
            self.meta = meta
            self.links = links
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.results = try values.decodeIfPresent([Version].self, forKey: "results")
            self.meta = try values.decodeIfPresent(OptionalFieldMeta.self, forKey: "meta")
            self.links = try values.decodeIfPresent(OptionalFieldLinks.self, forKey: "_links")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(results, forKey: "results")
            try values.encodeIfPresent(meta, forKey: "meta")
            try values.encodeIfPresent(links, forKey: "_links")
        }
    }

    public init(id: String? = nil, status: ContentStatus? = nil, title: String? = nil, spaceID: String? = nil, parentID: String? = nil, parentType: ParentContentType? = nil, position: Int32? = nil, authorID: String? = nil, ownerID: String? = nil, lastOwnerID: String? = nil, createdAt: Date? = nil, version: Version? = nil, body: BodySingle? = nil, labels: Labels? = nil, properties: Properties? = nil, operations: Operations? = nil, likes: Likes? = nil, versions: Versions? = nil, isFavoritedByCurrentUser: Bool? = nil, links: AbstractPageLinks? = nil) {
        self.id = id
        self.status = status
        self.title = title
        self.spaceID = spaceID
        self.parentID = parentID
        self.parentType = parentType
        self.position = position
        self.authorID = authorID
        self.ownerID = ownerID
        self.lastOwnerID = lastOwnerID
        self.createdAt = createdAt
        self.version = version
        self.body = body
        self.labels = labels
        self.properties = properties
        self.operations = operations
        self.likes = likes
        self.versions = versions
        self.isFavoritedByCurrentUser = isFavoritedByCurrentUser
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.status = try values.decodeIfPresent(ContentStatus.self, forKey: "status")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.spaceID = try values.decodeIfPresent(String.self, forKey: "spaceId")
        self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
        self.parentType = try values.decodeIfPresent(ParentContentType.self, forKey: "parentType")
        self.position = try values.decodeIfPresent(Int32.self, forKey: "position")
        self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
        self.ownerID = try values.decodeIfPresent(String.self, forKey: "ownerId")
        self.lastOwnerID = try values.decodeIfPresent(String.self, forKey: "lastOwnerId")
        self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
        self.body = try values.decodeIfPresent(BodySingle.self, forKey: "body")
        self.labels = try values.decodeIfPresent(Labels.self, forKey: "labels")
        self.properties = try values.decodeIfPresent(Properties.self, forKey: "properties")
        self.operations = try values.decodeIfPresent(Operations.self, forKey: "operations")
        self.likes = try values.decodeIfPresent(Likes.self, forKey: "likes")
        self.versions = try values.decodeIfPresent(Versions.self, forKey: "versions")
        self.isFavoritedByCurrentUser = try values.decodeIfPresent(Bool.self, forKey: "isFavoritedByCurrentUser")
        self.links = try values.decodeIfPresent(AbstractPageLinks.self, forKey: "_links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(spaceID, forKey: "spaceId")
        try values.encodeIfPresent(parentID, forKey: "parentId")
        try values.encodeIfPresent(parentType, forKey: "parentType")
        try values.encodeIfPresent(position, forKey: "position")
        try values.encodeIfPresent(authorID, forKey: "authorId")
        try values.encodeIfPresent(ownerID, forKey: "ownerId")
        try values.encodeIfPresent(lastOwnerID, forKey: "lastOwnerId")
        try values.encodeIfPresent(createdAt, forKey: "createdAt")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(labels, forKey: "labels")
        try values.encodeIfPresent(properties, forKey: "properties")
        try values.encodeIfPresent(operations, forKey: "operations")
        try values.encodeIfPresent(likes, forKey: "likes")
        try values.encodeIfPresent(versions, forKey: "versions")
        try values.encodeIfPresent(isFavoritedByCurrentUser, forKey: "isFavoritedByCurrentUser")
        try values.encodeIfPresent(links, forKey: "_links")
    }
}