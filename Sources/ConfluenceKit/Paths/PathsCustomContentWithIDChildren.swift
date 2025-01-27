// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.CustomContent.WithID {
    public var children: Children {
        Children(path: path + "/children")
    }

    public struct Children {
        /// Path: `/custom-content/{id}/children`
        public let path: String

        /// Get child custom content
        ///
        /// Returns all child custom content for given custom content id. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site ('Can use' global permission).
        /// Only custom content that the user has permission to view will be returned.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getChildCustomContent")
        }

        /// MultiEntityResult<ChildCustomContent>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.ChildCustomContent]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.ChildCustomContent]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.ChildCustomContent].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/custom-content/{id}/children?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var cursor: String?
            public var limit: Int32?
            public var sort: String?

            public init(cursor: String? = nil, limit: Int32? = nil, sort: String? = nil) {
                self.cursor = cursor
                self.limit = limit
                self.sort = sort
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(sort, forKey: "sort")
                return encoder.items
            }
        }
    }
}
