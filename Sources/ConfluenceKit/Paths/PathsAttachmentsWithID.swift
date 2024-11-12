// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Attachments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/attachments/{id}`
        public let path: String

        /// Get attachment by id
        ///
        /// Returns a specific attachment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the attachment's container.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getAttachmentById")
        }

        public struct GetResponse: Decodable {
            /// ID of the attachment.
            public var id: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the comment.
            public var title: String?
            /// Date and time when the attachment was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
            public var createdAt: Date?
            /// ID of the containing page.
            /// 
            /// Note: This is only returned if the attachment has a container that is a page.
            public var pageID: String?
            /// ID of the containing blog post.
            /// 
            /// Note: This is only returned if the attachment has a container that is a blog post.
            public var blogPostID: String?
            /// ID of the containing custom content.
            /// 
            /// Note: This is only returned if the attachment has a container that is custom content.
            public var customContentID: String?
            /// Media Type for the attachment.
            public var mediaType: String?
            /// Media Type description for the attachment.
            public var mediaTypeDescription: String?
            /// Comment for the attachment.
            public var comment: String?
            /// File ID of the attachment. This is the ID referenced in `atlas_doc_format` bodies and is distinct from the attachment ID.
            public var fileID: String?
            /// File size of the attachment.
            public var fileSize: Int64?
            /// WebUI link of the attachment.
            public var webuiLink: String?
            /// Download link of the attachment.
            public var downloadLink: String?
            public var version: ConfluenceKit.Version?
            public var labels: Labels?
            public var properties: Properties?
            public var operations: Operations?
            public var versions: Versions?
            public var links: ConfluenceKit.AttachmentLinks?

            public struct Labels: Decodable {
                public var results: [ConfluenceKit.Label]?
                public var meta: ConfluenceKit.OptionalFieldMeta?
                public var links: ConfluenceKit.OptionalFieldLinks?

                public init(results: [ConfluenceKit.Label]? = nil, meta: ConfluenceKit.OptionalFieldMeta? = nil, links: ConfluenceKit.OptionalFieldLinks? = nil) {
                    self.results = results
                    self.meta = meta
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.results = try values.decodeIfPresent([ConfluenceKit.Label].self, forKey: "results")
                    self.meta = try values.decodeIfPresent(ConfluenceKit.OptionalFieldMeta.self, forKey: "meta")
                    self.links = try values.decodeIfPresent(ConfluenceKit.OptionalFieldLinks.self, forKey: "_links")
                }
            }

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

            public init(id: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, createdAt: Date? = nil, pageID: String? = nil, blogPostID: String? = nil, customContentID: String? = nil, mediaType: String? = nil, mediaTypeDescription: String? = nil, comment: String? = nil, fileID: String? = nil, fileSize: Int64? = nil, webuiLink: String? = nil, downloadLink: String? = nil, version: ConfluenceKit.Version? = nil, labels: Labels? = nil, properties: Properties? = nil, operations: Operations? = nil, versions: Versions? = nil, links: ConfluenceKit.AttachmentLinks? = nil) {
                self.id = id
                self.status = status
                self.title = title
                self.createdAt = createdAt
                self.pageID = pageID
                self.blogPostID = blogPostID
                self.customContentID = customContentID
                self.mediaType = mediaType
                self.mediaTypeDescription = mediaTypeDescription
                self.comment = comment
                self.fileID = fileID
                self.fileSize = fileSize
                self.webuiLink = webuiLink
                self.downloadLink = downloadLink
                self.version = version
                self.labels = labels
                self.properties = properties
                self.operations = operations
                self.versions = versions
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
                self.pageID = try values.decodeIfPresent(String.self, forKey: "pageId")
                self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
                self.customContentID = try values.decodeIfPresent(String.self, forKey: "customContentId")
                self.mediaType = try values.decodeIfPresent(String.self, forKey: "mediaType")
                self.mediaTypeDescription = try values.decodeIfPresent(String.self, forKey: "mediaTypeDescription")
                self.comment = try values.decodeIfPresent(String.self, forKey: "comment")
                self.fileID = try values.decodeIfPresent(String.self, forKey: "fileId")
                self.fileSize = try values.decodeIfPresent(Int64.self, forKey: "fileSize")
                self.webuiLink = try values.decodeIfPresent(String.self, forKey: "webuiLink")
                self.downloadLink = try values.decodeIfPresent(String.self, forKey: "downloadLink")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.labels = try values.decodeIfPresent(Labels.self, forKey: "labels")
                self.properties = try values.decodeIfPresent(Properties.self, forKey: "properties")
                self.operations = try values.decodeIfPresent(Operations.self, forKey: "operations")
                self.versions = try values.decodeIfPresent(Versions.self, forKey: "versions")
                self.links = try values.decodeIfPresent(ConfluenceKit.AttachmentLinks.self, forKey: "_links")
            }
        }

        public struct GetParameters {
            public var version: Int?
            public var isIncludeLabels: Bool?
            public var isIncludeProperties: Bool?
            public var isIncludeOperations: Bool?
            public var isIncludeVersions: Bool?
            public var isIncludeVersion: Bool?

            public init(version: Int? = nil, isIncludeLabels: Bool? = nil, isIncludeProperties: Bool? = nil, isIncludeOperations: Bool? = nil, isIncludeVersions: Bool? = nil, isIncludeVersion: Bool? = nil) {
                self.version = version
                self.isIncludeLabels = isIncludeLabels
                self.isIncludeProperties = isIncludeProperties
                self.isIncludeOperations = isIncludeOperations
                self.isIncludeVersions = isIncludeVersions
                self.isIncludeVersion = isIncludeVersion
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(version, forKey: "version")
                encoder.encode(isIncludeLabels, forKey: "include-labels")
                encoder.encode(isIncludeProperties, forKey: "include-properties")
                encoder.encode(isIncludeOperations, forKey: "include-operations")
                encoder.encode(isIncludeVersions, forKey: "include-versions")
                encoder.encode(isIncludeVersion, forKey: "include-version")
                return encoder.items
            }
        }

        /// Delete attachment
        ///
        /// Delete an attachment by id.
        /// 
        /// Deleting an attachment moves the attachment to the trash, where it can be restored later. To permanently delete an attachment (or "purge" it),
        /// the endpoint must be called on a **trashed** attachment with the following param `purge=true`.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the container of the attachment.
        /// Permission to delete attachments in the space.
        /// Permission to administer the space (if attempting to purge).
        public func delete(isPurge: Bool? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: makeDeleteQuery(isPurge), id: "deleteAttachment")
        }

        private func makeDeleteQuery(_ isPurge: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isPurge, forKey: "purge")
            return encoder.items
        }
    }
}