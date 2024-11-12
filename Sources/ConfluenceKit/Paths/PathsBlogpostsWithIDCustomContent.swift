// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Blogposts.WithID {
    public var customContent: CustomContent {
        CustomContent(path: path + "/custom-content")
    }

    public struct CustomContent {
        /// Path: `/blogposts/{id}/custom-content`
        public let path: String

        /// Get custom content by type in blog post
        ///
        /// Returns all custom content for a given type within a given blogpost. The number of results is limited by the `limit` parameter and additional results (if available)
        /// will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the custom content, the container of the custom content (blog post), and the corresponding space.
        public func get(parameters: GetParameters) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters.asQuery, id: "getCustomContentByTypeInBlogPost")
        }

        /// MultiEntityResult<CustomContent>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.CustomContentBulk]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.CustomContentBulk]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.CustomContentBulk].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/blogposts/{id}/custom-content?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var type: String
            /// The sort fields for custom content. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            public var cursor: String?
            public var limit: Int32?
            /// The formats a custom content body can be represented as. A subset of BodyRepresentation.
            public var bodyFormat: BodyFormat?

            /// The sort fields for custom content. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
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

            /// The formats a custom content body can be represented as. A subset of BodyRepresentation.
            public enum BodyFormat: String, Codable, CaseIterable {
                case raw
                case storage
                case atlasDocFormat = "atlas_doc_format"
            }

            public init(type: String, sort: Sort? = nil, cursor: String? = nil, limit: Int32? = nil, bodyFormat: BodyFormat? = nil) {
                self.type = type
                self.sort = sort
                self.cursor = cursor
                self.limit = limit
                self.bodyFormat = bodyFormat
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(type, forKey: "type")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(bodyFormat, forKey: "body-format")
                return encoder.items
            }
        }
    }
}