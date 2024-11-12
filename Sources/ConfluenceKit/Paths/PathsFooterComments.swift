// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var footerComments: FooterComments {
        FooterComments(path: "/footer-comments")
    }

    public struct FooterComments {
        /// Path: `/footer-comments`
        public let path: String

        /// Get footer comments
        ///
        /// Returns all footer comments. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the container and its corresponding space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getFooterComments")
        }

        /// MultiEntityResult<FooterCommentModel>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.FooterCommentModel]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.FooterCommentModel]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.FooterCommentModel].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/footer-comments/<id>/children?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public var bodyFormat: BodyFormat?
            /// The sort fields for comments. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var cursor: String?
            public var limit: Int32?

            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public enum BodyFormat: String, Codable, CaseIterable {
                case storage
                case atlasDocFormat = "atlas_doc_format"
            }

            /// The sort fields for comments. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case createdDate = "created-date"
                case minuscreatedDate = "-created-date"
                case modifiedDate = "modified-date"
                case minusmodifiedDate = "-modified-date"
            }

            public init(bodyFormat: BodyFormat? = nil, sort: Sort? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.bodyFormat = bodyFormat
                self.sort = sort
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bodyFormat, forKey: "body-format")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }

        /// Create footer comment
        ///
        /// Create a footer comment.
        /// 
        /// The footer comment can be made against several locations: 
        /// - at the top level (specifying pageId or blogPostId in the request body)
        /// - as a reply (specifying parentCommentId in the request body)
        /// - against an attachment (note: this is different than the comments added via the attachment properties page on the UI, which are referred to as version comments)
        /// - against a custom content
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page or blogpost and its corresponding space. Permission to create comments in the space.
        public func post(_ body: ConfluenceKit.CreateFooterCommentModel) -> Request<PostResponse> {
            Request(path: path, method: "POST", body: body, id: "createFooterComment")
        }

        public struct PostResponse: Decodable {
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
            /// ID of the attachment containing the comment if the comment is on an attachment.
            public var attachmentID: String?
            /// ID of the custom content containing the comment if the comment is on a custom content.
            public var customContentID: String?
            /// ID of the parent comment if the comment is a reply.
            public var parentCommentID: String?
            public var version: ConfluenceKit.Version?
            public var properties: Properties?
            public var operations: Operations?
            public var likes: Likes?
            public var versions: Versions?
            /// Contains fields for each representation type requested.
            public var body: ConfluenceKit.BodySingle?
            public var links: ConfluenceKit.CommentLinks?

            public struct Properties: Decodable {
                public var results: [ConfluenceKit.ContentProperty]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.ContentProperty]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.ContentProperty].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
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

            public init(id: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, blogPostID: String? = nil, pageID: String? = nil, attachmentID: String? = nil, customContentID: String? = nil, parentCommentID: String? = nil, version: ConfluenceKit.Version? = nil, properties: Properties? = nil, operations: Operations? = nil, likes: Likes? = nil, versions: Versions? = nil, body: ConfluenceKit.BodySingle? = nil, links: ConfluenceKit.CommentLinks? = nil) {
                self.id = id
                self.status = status
                self.title = title
                self.blogPostID = blogPostID
                self.pageID = pageID
                self.attachmentID = attachmentID
                self.customContentID = customContentID
                self.parentCommentID = parentCommentID
                self.version = version
                self.properties = properties
                self.operations = operations
                self.likes = likes
                self.versions = versions
                self.body = body
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
                self.pageID = try values.decodeIfPresent(String.self, forKey: "pageId")
                self.attachmentID = try values.decodeIfPresent(String.self, forKey: "attachmentId")
                self.customContentID = try values.decodeIfPresent(String.self, forKey: "customContentId")
                self.parentCommentID = try values.decodeIfPresent(String.self, forKey: "parentCommentId")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.properties = try values.decodeIfPresent(Properties.self, forKey: "properties")
                self.operations = try values.decodeIfPresent(Operations.self, forKey: "operations")
                self.likes = try values.decodeIfPresent(Likes.self, forKey: "likes")
                self.versions = try values.decodeIfPresent(Versions.self, forKey: "versions")
                self.body = try values.decodeIfPresent(ConfluenceKit.BodySingle.self, forKey: "body")
                self.links = try values.decodeIfPresent(ConfluenceKit.CommentLinks.self, forKey: "_links")
            }
        }

        public enum PostResponseHeaders {
            /// Returns the URL at which the created footer comment is retrievable.
            public static let location = HTTPHeader<String>(field: "location")
        }
    }
}
