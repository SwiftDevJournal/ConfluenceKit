// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Blogposts.WithID {
    public var attachments: Attachments {
        Attachments(path: path + "/attachments")
    }

    public struct Attachments {
        /// Path: `/blogposts/{id}/attachments`
        public let path: String

        /// Get attachments for blog post
        ///
        /// Returns the attachments of specific blog post. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the blog post and its corresponding space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getBlogpostAttachments")
        }

        /// MultiEntityResult<Attachment>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.AttachmentBulk]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.AttachmentBulk]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.AttachmentBulk].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/blogposts/<id>/attachments?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            /// The sort fields for attachments. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var cursor: String?
            public var status: [Status]?
            public var mediaType: String?
            public var filename: String?
            public var limit: Int32?

            /// The sort fields for attachments. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case createdDate = "created-date"
                case minuscreatedDate = "-created-date"
                case modifiedDate = "modified-date"
                case minusmodifiedDate = "-modified-date"
            }

            public enum Status: String, Codable, CaseIterable {
                case current
                case archived
                case trashed
            }

            public init(sort: Sort? = nil, cursor: String? = nil, status: [Status]? = nil, mediaType: String? = nil, filename: String? = nil, limit: Int32? = nil) {
                self.sort = sort
                self.cursor = cursor
                self.status = status
                self.mediaType = mediaType
                self.filename = filename
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(status, forKey: "status")
                encoder.encode(mediaType, forKey: "mediaType")
                encoder.encode(filename, forKey: "filename")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }
    }
}
