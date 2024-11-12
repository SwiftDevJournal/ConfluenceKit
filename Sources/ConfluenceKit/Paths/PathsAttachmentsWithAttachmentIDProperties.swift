// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Attachments.WithAttachmentID {
    public var properties: Properties {
        Properties(path: path + "/properties")
    }

    public struct Properties {
        /// Path: `/attachments/{attachment-id}/properties`
        public let path: String

        /// Get content properties for attachment
        ///
        /// Retrieves all Content Properties tied to a specified attachment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the attachment.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getAttachmentContentProperties")
        }

        /// MultiEntityResult<ContentProperty>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.ContentProperty]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.ContentProperty]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.ContentProperty].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/attachments/<attachment-id>/properties?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var key: String?
            /// The sort fields for content properties. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var cursor: String?
            public var limit: Int32?

            /// The sort fields for content properties. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case key
                case minuskey = "-key"
            }

            public init(key: String? = nil, sort: Sort? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.key = key
                self.sort = sort
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(key, forKey: "key")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }

        /// Create content property for attachment
        ///
        /// Creates a new content property for an attachment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to update the attachment.
        public func post(_ body: ConfluenceKit.ContentPropertyCreateRequest) -> Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "POST", body: body, id: "createAttachmentProperty")
        }
    }
}
