// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Folders.WithFolderID.Properties {
    public func propertyID(_ propertyID: Int) -> WithPropertyID {
        WithPropertyID(path: "\(path)/\(propertyID)")
    }

    public struct WithPropertyID {
        /// Path: `/folders/{folder-id}/properties/{property-id}`
        public let path: String

        /// Get content property for folder by id
        ///
        /// Retrieves a specific Content Property by ID that is attached to a specified folder.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the folder.
        public var get: Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "GET", id: "getFolderContentPropertiesById")
        }

        /// Update content property for folder by id
        ///
        /// Update a content property for a folder by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the folder.
        public func put(_ body: ConfluenceKit.ContentPropertyUpdateRequest) -> Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "PUT", body: body, id: "updateFolderPropertyById")
        }

        /// Delete content property for folder by id
        ///
        /// Deletes a content property for a folder by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the folder.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteFolderPropertyById")
        }
    }
}
