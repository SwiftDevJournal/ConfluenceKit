// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Folders {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/folders/{id}`
        public let path: String

        /// Get folder by id
        ///
        /// Returns a specific folder.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the folder and its corresponding space.
        public var get: Request<GetResponse> {
            Request(path: path, method: "GET", id: "getFolderById")
        }

        public struct GetResponse: Decodable {
            /// ID of the folder.
            public var id: String?
            /// The content type of the object.
            public var type: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the folder.
            public var title: String?
            /// ID of the parent content, or null if there is no parent content.
            public var parentID: String?
            /// Content type of the parent, or null if there is no parent.
            public var parentType: ConfluenceKit.ParentContentType?
            /// Position of the folder within the given parent page tree.
            public var position: Int32?
            /// The account ID of the user who created this folder.
            public var authorID: String?
            /// The account ID of the user who owns this folder.
            public var ownerID: String?
            /// Date and time when the folder was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
            public var createdAt: Date?
            public var version: ConfluenceKit.Version?
            public var links: ConfluenceKit.FolderLinks?

            public init(id: String? = nil, type: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, parentID: String? = nil, parentType: ConfluenceKit.ParentContentType? = nil, position: Int32? = nil, authorID: String? = nil, ownerID: String? = nil, createdAt: Date? = nil, version: ConfluenceKit.Version? = nil, links: ConfluenceKit.FolderLinks? = nil) {
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
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.links = try values.decodeIfPresent(ConfluenceKit.FolderLinks.self, forKey: "_links")
            }
        }

        /// Delete folder
        ///
        /// Delete a folder by id.
        /// 
        /// Deleting a folder moves the folder to the trash, where it can be restored later
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the folder and its corresponding space.
        /// Permission to delete folders in the space.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteFolder")
        }
    }
}
