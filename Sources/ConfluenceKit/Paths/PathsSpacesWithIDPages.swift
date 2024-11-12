// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Spaces.WithID {
    public var pages: Pages {
        Pages(path: path + "/pages")
    }

    public struct Pages {
        /// Path: `/spaces/{id}/pages`
        public let path: String

        /// Get pages in space
        ///
        /// Returns all pages in a space. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site ('Can use' global permission) and 'View' permission for the space.
        /// Only pages that the user has permission to view will be returned.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getPagesInSpace")
        }

        /// MultiEntityResult<Page>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.PageBulk]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.PageBulk]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.PageBulk].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/spaces/<id>/pages?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var depth: Depth?
            /// The sort fields for pages. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var status: [Status]?
            public var title: String?
            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public var bodyFormat: BodyFormat?
            public var cursor: String?
            public var limit: Int32?

            public enum Depth: String, Codable, CaseIterable {
                case all
                case root
            }

            /// The sort fields for pages. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case id
                case minusid = "-id"
                case createdDate = "created-date"
                case minuscreatedDate = "-created-date"
                case modifiedDate = "modified-date"
                case minusmodifiedDate = "-modified-date"
                case title
                case minustitle = "-title"
            }

            public enum Status: String, Codable, CaseIterable {
                case current
                case archived
                case deleted
                case trashed
            }

            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public enum BodyFormat: String, Codable, CaseIterable {
                case storage
                case atlasDocFormat = "atlas_doc_format"
            }

            public init(depth: Depth? = nil, sort: Sort? = nil, status: [Status]? = nil, title: String? = nil, bodyFormat: BodyFormat? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.depth = depth
                self.sort = sort
                self.status = status
                self.title = title
                self.bodyFormat = bodyFormat
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(depth, forKey: "depth")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(status, forKey: "status")
                encoder.encode(title, forKey: "title")
                encoder.encode(bodyFormat, forKey: "body-format")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }
    }
}
