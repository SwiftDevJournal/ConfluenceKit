// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var spaces: Spaces {
        Spaces(path: "/spaces")
    }

    public struct Spaces {
        /// Path: `/spaces`
        public let path: String

        /// Get spaces
        ///
        /// Returns all spaces. The results will be sorted by id ascending. The number of results is limited by the `limit` parameter and
        /// additional results (if available) will be available through the `next` URL present in the `Link` response header.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to access the Confluence site ('Can use' global permission).
        /// Only spaces that the user has permission to view will be returned.
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getSpaces")
        }

        /// MultiEntityResult<Space>
        public struct GetResponse: Decodable {
            public var results: [ConfluenceKit.SpaceBulk]?
            public var links: ConfluenceKit.MultiEntityLinks?

            public init(results: [ConfluenceKit.SpaceBulk]? = nil, links: ConfluenceKit.MultiEntityLinks? = nil) {
                self.results = results
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.results = try values.decodeIfPresent([ConfluenceKit.SpaceBulk].self, forKey: "results")
                self.links = try values.decodeIfPresent(ConfluenceKit.MultiEntityLinks.self, forKey: "_links")
            }
        }

        public enum GetResponseHeaders {
            /// This header contains URL(s) within angle brackets and a relation description for each URL, describing how the provided URL relates to the incoming request's URL. For example, rel="next" would be the URL necessary to get the next page of information. Example response header format: `Link: </wiki/api/v2/spaces?cursor=<opaque cursor token>>; rel="next", <https://site.atlassian.net/wiki>; rel="base"`
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var ids: [Int64]?
            public var keys: [String]?
            public var type: `Type`?
            public var status: Status?
            public var labels: [String]?
            public var favoritedBy: String?
            public var notFavoritedBy: String?
            /// The sort fields for spaces. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public var sort: Sort?
            /// The formats a space description can be represented as. A subset of BodyRepresentation.
            public var descriptionFormat: DescriptionFormat?
            public var isIncludeIcon: Bool?
            public var cursor: String?
            public var limit: Int32?

            public enum `Type`: String, Codable, CaseIterable {
                case global
                case collaboration
                case knowledgeBase = "knowledge_base"
                case personal
            }

            public enum Status: String, Codable, CaseIterable {
                case current
                case archived
            }

            /// The sort fields for spaces. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
            public enum Sort: String, Codable, CaseIterable {
                case id
                case minusid = "-id"
                case key
                case minuskey = "-key"
                case name
                case minusname = "-name"
            }

            /// The formats a space description can be represented as. A subset of BodyRepresentation.
            public enum DescriptionFormat: String, Codable, CaseIterable {
                case plain
                case view
            }

            public init(ids: [Int64]? = nil, keys: [String]? = nil, type: `Type`? = nil, status: Status? = nil, labels: [String]? = nil, favoritedBy: String? = nil, notFavoritedBy: String? = nil, sort: Sort? = nil, descriptionFormat: DescriptionFormat? = nil, isIncludeIcon: Bool? = nil, cursor: String? = nil, limit: Int32? = nil) {
                self.ids = ids
                self.keys = keys
                self.type = type
                self.status = status
                self.labels = labels
                self.favoritedBy = favoritedBy
                self.notFavoritedBy = notFavoritedBy
                self.sort = sort
                self.descriptionFormat = descriptionFormat
                self.isIncludeIcon = isIncludeIcon
                self.cursor = cursor
                self.limit = limit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(ids, forKey: "ids")
                encoder.encode(keys, forKey: "keys")
                encoder.encode(type, forKey: "type")
                encoder.encode(status, forKey: "status")
                encoder.encode(labels, forKey: "labels")
                encoder.encode(favoritedBy, forKey: "favorited-by")
                encoder.encode(notFavoritedBy, forKey: "not-favorited-by")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(descriptionFormat, forKey: "description-format")
                encoder.encode(isIncludeIcon, forKey: "include-icon")
                encoder.encode(cursor, forKey: "cursor")
                encoder.encode(limit, forKey: "limit")
                return encoder.items
            }
        }

        /// Create space
        ///
        /// Creates a Space as specified in the payload.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to create spaces.
        public func post(_ body: PostRequest) -> Request<PostResponse> {
            Request(path: path, method: "POST", body: body, id: "createSpace")
        }

        public struct PostResponse: Decodable {
            /// ID of the space.
            public var id: String?
            /// Key of the space.
            public var key: String?
            /// Name of the space.
            public var name: String?
            /// The type of space.
            public var type: ConfluenceKit.SpaceType?
            /// The status of the space.
            public var status: ConfluenceKit.SpaceStatus?
            /// The account ID of the user who created this space originally.
            public var authorID: String?
            /// Date and time when the space was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
            public var createdAt: Date?
            /// ID of the space's homepage.
            public var homepageID: String?
            /// Contains fields for each representation type requested.
            public var description: ConfluenceKit.SpaceDescription?
            /// The icon of the space
            public var icon: ConfluenceKit.SpaceIcon?
            public var links: ConfluenceKit.SpaceLinks?

            public init(id: String? = nil, key: String? = nil, name: String? = nil, type: ConfluenceKit.SpaceType? = nil, status: ConfluenceKit.SpaceStatus? = nil, authorID: String? = nil, createdAt: Date? = nil, homepageID: String? = nil, description: ConfluenceKit.SpaceDescription? = nil, icon: ConfluenceKit.SpaceIcon? = nil, links: ConfluenceKit.SpaceLinks? = nil) {
                self.id = id
                self.key = key
                self.name = name
                self.type = type
                self.status = status
                self.authorID = authorID
                self.createdAt = createdAt
                self.homepageID = homepageID
                self.description = description
                self.icon = icon
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.key = try values.decodeIfPresent(String.self, forKey: "key")
                self.name = try values.decodeIfPresent(String.self, forKey: "name")
                self.type = try values.decodeIfPresent(ConfluenceKit.SpaceType.self, forKey: "type")
                self.status = try values.decodeIfPresent(ConfluenceKit.SpaceStatus.self, forKey: "status")
                self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
                self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
                self.homepageID = try values.decodeIfPresent(String.self, forKey: "homepageId")
                self.description = try values.decodeIfPresent(ConfluenceKit.SpaceDescription.self, forKey: "description")
                self.icon = try values.decodeIfPresent(ConfluenceKit.SpaceIcon.self, forKey: "icon")
                self.links = try values.decodeIfPresent(ConfluenceKit.SpaceLinks.self, forKey: "_links")
            }
        }

        public struct PostRequest: Encodable {
            /// The name of the space to be created.
            public var name: String
            /// The key for the new space. See [Space Keys](https://support.atlassian.com/confluence-cloud/docs/create-a-space/). If the key property is not provided, the alias property is required to be used instead.
            public var key: String?
            /// This field will be used as the new identifier for the space in confluence page URLs. If the alias property is not provided, the key property is required to be used instead. Maximum 255 alphanumeric characters in length.
            public var alias: String?
            /// The description of the new/updated space. Note, only the 'plain' representation is currently supported.
            public var description: Description?
            /// The role assignments for the new space. If none are provided, the Default Space Roles are applied. If roles are provided, the space is created with exactly the provided set of roles. A private space is created if only the creator is assigned to a role and it’s the Admin role. At least one Admin role assignment must be specified.
            public var roleAssignments: RoleAssignments?

            /// The description of the new/updated space. Note, only the 'plain' representation is currently supported.
            public struct Description: Encodable {
                /// The space description.
                public var value: String?
                /// The format of the description.
                public var representation: String?

                public init(value: String? = nil, representation: String? = nil) {
                    self.value = value
                    self.representation = representation
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(value, forKey: "value")
                    try values.encodeIfPresent(representation, forKey: "representation")
                }
            }

            /// The role assignments for the new space. If none are provided, the Default Space Roles are applied. If roles are provided, the space is created with exactly the provided set of roles. A private space is created if only the creator is assigned to a role and it’s the Admin role. At least one Admin role assignment must be specified.
            public struct RoleAssignments: Encodable {
                /// The principal of the role assignment.
                public var principal: ConfluenceKit.Principal?
                /// The role to which the principal is assigned.
                public var roleID: String?

                public init(principal: ConfluenceKit.Principal? = nil, roleID: String? = nil) {
                    self.principal = principal
                    self.roleID = roleID
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(principal, forKey: "principal")
                    try values.encodeIfPresent(roleID, forKey: "roleId")
                }
            }

            public init(name: String, key: String? = nil, alias: String? = nil, description: Description? = nil, roleAssignments: RoleAssignments? = nil) {
                self.name = name
                self.key = key
                self.alias = alias
                self.description = description
                self.roleAssignments = roleAssignments
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(name, forKey: "name")
                try values.encodeIfPresent(key, forKey: "key")
                try values.encodeIfPresent(alias, forKey: "alias")
                try values.encodeIfPresent(description, forKey: "description")
                try values.encodeIfPresent(roleAssignments, forKey: "roleAssignments")
            }
        }
    }
}
