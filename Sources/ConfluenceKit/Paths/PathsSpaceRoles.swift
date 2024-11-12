// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var spaceRoles: SpaceRoles {
        SpaceRoles(path: "/space-roles")
    }

    public struct SpaceRoles {
        /// Path: `/space-roles`
        public let path: String

        /// Get available space roles
        ///
        /// Retrieves the available space roles.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site; if requesting a certain space's roles, permission to view the space.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getAvailableSpaceRoles")
        }

        /// MultiEntityResult<SpaceRole>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.SpaceRole]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.SpaceRole]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.SpaceRole].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public struct GetParameters {
            public var spaceID: String?
            public var roleType: String?
            public var principalID: String?
            /// The principal type.
            public var principalType: PrincipalType?
            public var cursor: String?
            public var limit: Int32?

            /// The principal type.
            public enum PrincipalType: String, Codable, CaseIterable {
                case user = "USER"
                case group = "GROUP"
                case accessClass = "ACCESS_CLASS"
            }

            public init(spaceID: String? = nil, roleType: String? = nil, principalID: String? = nil, principalType: PrincipalType? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.spaceID = spaceID
                self.roleType = roleType
                self.principalID = principalID
                self.principalType = principalType
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(spaceID, forKey: "space-id")
                encoder.encode(roleType, forKey: "role-type")
                encoder.encode(principalID, forKey: "principal-id")
                encoder.encode(principalType, forKey: "principal-type")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }
    }
}