// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Blogposts.WithID {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }

    public struct Labels {
        /// Path: `/blogposts/{id}/labels`
        public let path: String

        /// Get labels for blog post
        ///
        /// Returns the labels of specific blog post. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the blog post and its corresponding space.
        /// Only labels that the user has permission to view will be returned.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getBlogPostLabels")
        }

        /// MultiEntityResult<Label>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.Label]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.Label]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.Label].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/blogposts/<id>/labels?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var prefix: Prefix?
            public var sort: String?
            public var cursor: String?
            public var limit: Int32?

            public enum Prefix: String, Codable, CaseIterable {
                case my
                case team
                case global
                case system
            }

            public init(prefix: Prefix? = nil, sort: String? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.prefix = prefix
                self.sort = sort
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(prefix, forKey: "prefix")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }
    }
}
