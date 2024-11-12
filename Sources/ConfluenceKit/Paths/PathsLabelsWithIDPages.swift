// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Labels.WithID {
    public var pages: Pages {
        Pages(path: path + "/pages")
    }

    public struct Pages {
        /// Path: `/labels/{id}/pages`
        public let path: String

        /// Get pages for label
        ///
        /// Returns the pages of specified label. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page and its corresponding space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getLabelPages")
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
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/labels/<id>/pages?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var spaceID: [Int64]?
            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public var bodyFormat: BodyFormat?
            /// The sort fields for pages. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var cursor: String?
            public var limit: Int32?

            /// The primary formats a body can be represented as. A subset of BodyRepresentation. These formats are the only allowed formats in certain use cases.
            public enum BodyFormat: String, Codable, CaseIterable {
                case storage
                case atlasDocFormat = "atlas_doc_format"
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

            public init(spaceID: [Int64]? = nil, bodyFormat: BodyFormat? = nil, sort: Sort? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.spaceID = spaceID
                self.bodyFormat = bodyFormat
                self.sort = sort
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(spaceID, forKey: "space-id")
                encoder.encode(bodyFormat, forKey: "body-format")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }
    }
}
