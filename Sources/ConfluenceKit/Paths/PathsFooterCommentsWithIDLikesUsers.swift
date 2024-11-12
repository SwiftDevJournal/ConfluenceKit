// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.FooterComments.WithID.Likes {
    public var users: Users {
        Users(path: path + "/users")
    }

    public struct Users {
        /// Path: `/footer-comments/{id}/likes/users`
        public let path: String

        /// Get account IDs of likes for footer comment
        ///
        /// Returns the account IDs of likes of specific footer comment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page/blogpost and its corresponding space.
        public func get(cursor: String? = nil, limit: Int32? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(cursor, limit), id: "getFooterLikeUsers")
        }

        /// MultiEntityResult<String>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.Like]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.Like]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.Like].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/footer-comments/<id>/likes/users?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ cursor: String?, _ limit: Int32?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(cursor, forKey: "cursor")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
