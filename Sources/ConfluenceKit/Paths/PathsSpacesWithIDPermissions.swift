// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Spaces.WithID {
    public var permissions: Permissions {
        Permissions(path: path + "/permissions")
    }

    public struct Permissions {
        /// Path: `/spaces/{id}/permissions`
        public let path: String

        /// Get space permissions assignments
        ///
        /// Returns space permission assignments for a specific space.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the space.
        public func get(cursor: String? = nil, limit: Int32? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(cursor, limit), id: "getSpacePermissionsAssignments")
        }

        /// MultiEntityResult<SpacePermissionAssignment>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.SpacePermissionAssignment]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.SpacePermissionAssignment]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.SpacePermissionAssignment].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        private func makeGetQuery(_ cursor: String?, _ limit: Int32?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(cursor, forKey: "cursor")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
