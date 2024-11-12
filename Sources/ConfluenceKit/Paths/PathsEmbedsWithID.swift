// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Embeds {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/embeds/{id}`
        public let path: String

        /// Get Smart Link in the content tree by id
        ///
        /// Returns a specific Smart Link in the content tree.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the Smart Link in the content tree and its corresponding space.
        public var get: Request<GetResponse> {
            Request(path: path, method: "GET", id: "getSmartLinkById")
        }

        public struct GetResponse: Decodable {
            /// ID of the Smart Link in the content tree.
            public var id: String?
            /// The content type of the object.
            public var type: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the Smart Link in the content tree.
            public var title: String?
            /// ID of the parent content, or null if there is no parent content.
            public var parentID: String?
            /// Content type of the parent, or null if there is no parent.
            public var parentType: ConfluenceKit.ParentContentType?
            /// Position of the Smart Link within the given parent page tree.
            public var position: Int32?
            /// The account ID of the user who created this Smart Link in the content tree originally.
            public var authorID: String?
            /// The account ID of the user who owns this Smart Link in the content tree.
            public var ownerID: String?
            /// Date and time when the Smart Link in the content tree was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
            public var createdAt: Date?
            /// The embedded URL of the Smart Link. If the Smart Link does not have an embedded URL, this property will not be included in the response.
            public var embedURL: String?
            public var version: ConfluenceKit.Version?
            public var links: ConfluenceKit.SmartLinkLinks?

            public init(id: String? = nil, type: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, parentID: String? = nil, parentType: ConfluenceKit.ParentContentType? = nil, position: Int32? = nil, authorID: String? = nil, ownerID: String? = nil, createdAt: Date? = nil, embedURL: String? = nil, version: ConfluenceKit.Version? = nil, links: ConfluenceKit.SmartLinkLinks? = nil) {
                self.id = id
                self.type = type
                self.status = status
                self.title = title
                self.parentID = parentID
                self.parentType = parentType
                self.position = position
                self.authorID = authorID
                self.ownerID = ownerID
                self.createdAt = createdAt
                self.embedURL = embedURL
                self.version = version
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.type = try values.decodeIfPresent(String.self, forKey: "type")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
                self.parentType = try values.decodeIfPresent(ConfluenceKit.ParentContentType.self, forKey: "parentType")
                self.position = try values.decodeIfPresent(Int32.self, forKey: "position")
                self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
                self.ownerID = try values.decodeIfPresent(String.self, forKey: "ownerId")
                self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
                self.embedURL = try values.decodeIfPresent(String.self, forKey: "embedUrl")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.links = try values.decodeIfPresent(ConfluenceKit.SmartLinkLinks.self, forKey: "_links")
            }
        }

        /// Delete Smart Link in the content tree
        ///
        /// Delete a Smart Link in the content tree by id.
        /// 
        /// Deleting a Smart Link in the content tree moves the Smart Link to the trash, where it can be restored later
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the Smart Link in the content tree and its corresponding space.
        /// Permission to delete Smart Links in the content tree in the space.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteSmartLink")
        }
    }
}
