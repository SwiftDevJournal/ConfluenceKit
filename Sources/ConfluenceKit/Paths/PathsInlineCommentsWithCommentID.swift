// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.InlineComments {
    public func commentID(_ commentID: Int) -> WithCommentID {
        WithCommentID(path: "\(path)/\(commentID)")
    }

    public struct WithCommentID {
        /// Path: `/inline-comments/{comment-id}`
        public let path: String

        /// Get inline comment by id
        ///
        /// Retrieves an inline comment by id
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page or blogpost and its corresponding space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getInlineCommentById")
        }

        public struct GetResponse: Decodable {
            /// ID of the comment.
            public var id: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the comment.
            public var title: String?
            /// ID of the blog post containing the comment if the comment is on a blog post.
            public var blogPostID: String?
            /// ID of the page containing the comment if the comment is on a page.
            public var pageID: String?
            /// ID of the parent comment if the comment is a reply.
            public var parentCommentID: String?
            public var version: ConfluenceKit.Version?
            /// Contains fields for each representation type requested.
            public var body: ConfluenceKit.BodySingle?
            /// Atlassian Account ID of last person who modified the resolve state of the comment. Null until comment is resolved or reopened.
            public var resolutionLastModifierID: String?
            /// Timestamp of the last modification to the comment's resolution status. Null until comment is resolved or reopened.
            public var resolutionLastModifiedAt: Date?
            /// Inline comment resolution status
            public var resolutionStatus: ConfluenceKit.InlineCommentResolutionStatus?
            public var properties: Properties?
            public var operations: Operations?
            public var likes: Likes?
            public var versions: Versions?
            public var links: ConfluenceKit.CommentLinks?

            public struct Properties: Decodable {
                public var results: [ConfluenceKit.ContentProperty]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?
                /// Property value used to reference the highlighted element in DOM.
                public var inlineMarkerRef: String?
                /// Text that is highlighted.
                public var inlineOriginalSelection: String?

                public init(results: [ConfluenceKit.ContentProperty]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil, inlineMarkerRef: String? = nil, inlineOriginalSelection: String? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                    self.inlineMarkerRef = inlineMarkerRef
                    self.inlineOriginalSelection = inlineOriginalSelection
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.ContentProperty].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                    self.inlineMarkerRef = try values.decodeIfPresent(String.self, forKey: "inlineMarkerRef")
                    self.inlineOriginalSelection = try values.decodeIfPresent(String.self, forKey: "inlineOriginalSelection")
                }
            }

            public struct Operations: Decodable {
                public var results: [ConfluenceKit.Operation]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Operation]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Operation].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public struct Likes: Decodable {
                public var results: [ConfluenceKit.Like]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Like]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Like].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public struct Versions: Decodable {
                public var results: [ConfluenceKit.Version]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Version]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Version].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public init(id: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, blogPostID: String? = nil, pageID: String? = nil, parentCommentID: String? = nil, version: ConfluenceKit.Version? = nil, body: ConfluenceKit.BodySingle? = nil, resolutionLastModifierID: String? = nil, resolutionLastModifiedAt: Date? = nil, resolutionStatus: ConfluenceKit.InlineCommentResolutionStatus? = nil, properties: Properties? = nil, operations: Operations? = nil, likes: Likes? = nil, versions: Versions? = nil, links: ConfluenceKit.CommentLinks? = nil) {
                self.id = id
                self.status = status
                self.title = title
                self.blogPostID = blogPostID
                self.pageID = pageID
                self.parentCommentID = parentCommentID
                self.version = version
                self.body = body
                self.resolutionLastModifierID = resolutionLastModifierID
                self.resolutionLastModifiedAt = resolutionLastModifiedAt
                self.resolutionStatus = resolutionStatus
                self.properties = properties
                self.operations = operations
                self.likes = likes
                self.versions = versions
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
                self.pageID = try values.decodeIfPresent(String.self, forKey: "pageId")
                self.parentCommentID = try values.decodeIfPresent(String.self, forKey: "parentCommentId")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.body = try values.decodeIfPresent(ConfluenceKit.BodySingle.self, forKey: "body")
                self.resolutionLastModifierID = try values.decodeIfPresent(String.self, forKey: "resolutionLastModifierId")
                self.resolutionLastModifiedAt = try values.decodeIfPresent(Date.self, forKey: "resolutionLastModifiedAt")
                self.resolutionStatus = try values.decodeIfPresent(ConfluenceKit.InlineCommentResolutionStatus.self, forKey: "resolutionStatus")
                self.properties = try values.decodeIfPresent(Properties.self, forKey: "properties")
                self.operations = try values.decodeIfPresent(Operations.self, forKey: "operations")
                self.likes = try values.decodeIfPresent(Likes.self, forKey: "likes")
                self.versions = try values.decodeIfPresent(Versions.self, forKey: "versions")
                self.links = try values.decodeIfPresent(ConfluenceKit.CommentLinks.self, forKey: "_links")
            }
        }

        public struct GetParameters {
            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public var bodyFormat: BodyFormat?
            public var version: Int?
            public var isIncludeProperties: Bool?
            public var isIncludeOperations: Bool?
            public var isIncludeLikes: Bool?
            public var isIncludeVersions: Bool?
            public var isIncludeVersion: Bool?

            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public enum BodyFormat: String, Codable, CaseIterable {
                case storage
                case atlasDocFormat = "atlas_doc_format"
                case view
                case exportView = "export_view"
                case anonymousExportView = "anonymous_export_view"
                case styledView = "styled_view"
                case editor
            }

            public init(bodyFormat: BodyFormat? = nil, version: Int? = nil, isIncludeProperties: Bool? = nil, isIncludeOperations: Bool? = nil, isIncludeLikes: Bool? = nil, isIncludeVersions: Bool? = nil, isIncludeVersion: Bool? = nil) {
                self.bodyFormat = bodyFormat
                self.version = version
                self.isIncludeProperties = isIncludeProperties
                self.isIncludeOperations = isIncludeOperations
                self.isIncludeLikes = isIncludeLikes
                self.isIncludeVersions = isIncludeVersions
                self.isIncludeVersion = isIncludeVersion
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bodyFormat, forKey: "body-format")
                encoder.encode(version, forKey: "version")
                encoder.encode(isIncludeProperties, forKey: "include-properties")
                encoder.encode(isIncludeOperations, forKey: "include-operations")
                encoder.encode(isIncludeLikes, forKey: "include-likes")
                encoder.encode(isIncludeVersions, forKey: "include-versions")
                encoder.encode(isIncludeVersion, forKey: "include-version")
                return encoder.items
            }
        }

        /// Update inline comment
        ///
        /// Update an inline comment. This can be used to update the body text of a comment and/or to resolve the comment
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page or blogpost and its corresponding space. Permission to create comments in the space.
        public func put(_ body: ConfluenceKit.UpdateInlineCommentModel) -> Request<PutResponse> {
            Request(path: path, method: "PUT", body: body, id: "updateInlineComment")
        }

        public struct PutResponse: Decodable {
            /// ID of the comment.
            public var id: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the comment.
            public var title: String?
            /// ID of the blog post containing the comment if the comment is on a blog post.
            public var blogPostID: String?
            /// ID of the page containing the comment if the comment is on a page.
            public var pageID: String?
            /// ID of the parent comment if the comment is a reply.
            public var parentCommentID: String?
            public var version: ConfluenceKit.Version?
            /// Contains fields for each representation type requested.
            public var body: ConfluenceKit.BodySingle?
            /// Atlassian Account ID of last person who modified the resolve state of the comment. Null until comment is resolved or reopened.
            public var resolutionLastModifierID: String?
            /// Timestamp of the last modification to the comment's resolution status. Null until comment is resolved or reopened.
            public var resolutionLastModifiedAt: Date?
            /// Inline comment resolution status
            public var resolutionStatus: ConfluenceKit.InlineCommentResolutionStatus?
            public var properties: Properties?
            public var operations: Operations?
            public var likes: Likes?
            public var versions: Versions?
            public var links: ConfluenceKit.CommentLinks?

            public struct Properties: Decodable {
                public var results: [ConfluenceKit.ContentProperty]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?
                /// Property value used to reference the highlighted element in DOM.
                public var inlineMarkerRef: String?
                /// Text that is highlighted.
                public var inlineOriginalSelection: String?

                public init(results: [ConfluenceKit.ContentProperty]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil, inlineMarkerRef: String? = nil, inlineOriginalSelection: String? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                    self.inlineMarkerRef = inlineMarkerRef
                    self.inlineOriginalSelection = inlineOriginalSelection
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.ContentProperty].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                    self.inlineMarkerRef = try values.decodeIfPresent(String.self, forKey: "inlineMarkerRef")
                    self.inlineOriginalSelection = try values.decodeIfPresent(String.self, forKey: "inlineOriginalSelection")
                }
            }

            public struct Operations: Decodable {
                public var results: [ConfluenceKit.Operation]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Operation]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Operation].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public struct Likes: Decodable {
                public var results: [ConfluenceKit.Like]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Like]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Like].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public struct Versions: Decodable {
                public var results: [ConfluenceKit.Version]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Version]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Version].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

            public init(id: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, blogPostID: String? = nil, pageID: String? = nil, parentCommentID: String? = nil, version: ConfluenceKit.Version? = nil, body: ConfluenceKit.BodySingle? = nil, resolutionLastModifierID: String? = nil, resolutionLastModifiedAt: Date? = nil, resolutionStatus: ConfluenceKit.InlineCommentResolutionStatus? = nil, properties: Properties? = nil, operations: Operations? = nil, likes: Likes? = nil, versions: Versions? = nil, links: ConfluenceKit.CommentLinks? = nil) {
                self.id = id
                self.status = status
                self.title = title
                self.blogPostID = blogPostID
                self.pageID = pageID
                self.parentCommentID = parentCommentID
                self.version = version
                self.body = body
                self.resolutionLastModifierID = resolutionLastModifierID
                self.resolutionLastModifiedAt = resolutionLastModifiedAt
                self.resolutionStatus = resolutionStatus
                self.properties = properties
                self.operations = operations
                self.likes = likes
                self.versions = versions
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
                self.pageID = try values.decodeIfPresent(String.self, forKey: "pageId")
                self.parentCommentID = try values.decodeIfPresent(String.self, forKey: "parentCommentId")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.body = try values.decodeIfPresent(ConfluenceKit.BodySingle.self, forKey: "body")
                self.resolutionLastModifierID = try values.decodeIfPresent(String.self, forKey: "resolutionLastModifierId")
                self.resolutionLastModifiedAt = try values.decodeIfPresent(Date.self, forKey: "resolutionLastModifiedAt")
                self.resolutionStatus = try values.decodeIfPresent(ConfluenceKit.InlineCommentResolutionStatus.self, forKey: "resolutionStatus")
                self.properties = try values.decodeIfPresent(Properties.self, forKey: "properties")
                self.operations = try values.decodeIfPresent(Operations.self, forKey: "operations")
                self.likes = try values.decodeIfPresent(Likes.self, forKey: "likes")
                self.versions = try values.decodeIfPresent(Versions.self, forKey: "versions")
                self.links = try values.decodeIfPresent(ConfluenceKit.CommentLinks.self, forKey: "_links")
            }
        }

        /// Delete inline comment
        ///
        /// Deletes an inline comment. This is a permanent deletion and cannot be reverted.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page or blogpost and its corresponding space. Permission to delete comments in the space.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteInlineComment")
        }
    }
}