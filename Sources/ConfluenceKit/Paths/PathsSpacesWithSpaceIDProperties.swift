// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Spaces.WithSpaceID {
    public var properties: Properties {
        Properties(path: path + "/properties")
    }

    public struct Properties {
        /// Path: `/spaces/{space-id}/properties`
        public let path: String

        /// Get space properties in space
        ///
        /// Returns all properties for the given space. Space properties are a key-value storage associated with a space.
        /// The limit parameter specifies the maximum number of results returned in a single response. Use the `link` response header
        /// to paginate through additional results.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site ('Can use' global permission) and 'View' permission for the space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getSpaceProperties")
        }

        /// MultiEntityResult<SpaceProperty>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.SpaceProperty]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.SpaceProperty]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.SpaceProperty].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var key: String?
            public var cursor: String?
            public var limit: Int32?

            public init(key: String? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.key = key
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(key, forKey: "key")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }

        /// Create space property in space
        ///
        /// Creates a new space property.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site ('Can use' global permission) and 'Admin' permission for the space.
        public func post(_ body: ConfluenceKit.SpacePropertyCreateRequest) -> Request<ConfluenceKit.SpaceProperty> {
            Request(path: path, method: "POST", body: body, id: "createSpaceProperty")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "location")
        }
    }
}