// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.CustomContent.WithCustomContentID {
    public var versions: Versions {
        Versions(path: path + "/versions")
    }

    public struct Versions {
        /// Path: `/custom-content/{custom-content-id}/versions`
        public let path: String

        /// Get custom content versions
        ///
        /// Returns the versions of specific custom content.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the custom content and its corresponding page and space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getCustomContentVersions")
        }

        /// MultiEntityResult<Version>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.CustomContentVersion]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.CustomContentVersion]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.CustomContentVersion].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/custom-content/<id>/versions?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            /// The formats a custom content body can be represented as. A subset of BodyRepresentation.
            public var bodyFormat: BodyFormat?
            public var cursor: String?
            public var limit: Int32?
            /// The sort fields for versions. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?

            /// The formats a custom content body can be represented as. A subset of BodyRepresentation.
            public enum BodyFormat: String, Codable, CaseIterable {
                case raw
                case storage
                case atlasDocFormat = "atlas_doc_format"
            }

            /// The sort fields for versions. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case modifiedDate = "modified-date"
                case minusmodifiedDate = "-modified-date"
            }

            public init(bodyFormat: BodyFormat? = nil, cursor: String? = nil, limit: Int32? = nil, sort: Sort? = nil) {
                self.bodyFormat = bodyFormat
                self.cursor = cursor
                self.limit = limit
                self.sort = sort
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bodyFormat, forKey: "body-format")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(sort, forKey: "sort")
                return encoder.items
            }
        }
    }
}
