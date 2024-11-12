// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Attachments.WithAttachmentID.Properties {
    public func propertyID(_ propertyID: Int) -> WithPropertyID {
        WithPropertyID(path: "\(path)/\(propertyID)")
    }

    public struct WithPropertyID {
        /// Path: `/attachments/{attachment-id}/properties/{property-id}`
        public let path: String

        /// Get content property for attachment by id
        ///
        /// Retrieves a specific Content Property by ID that is attached to a specified attachment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the attachment.
        public var get: Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "GET", id: "getAttachmentContentPropertiesById")
        }

        /// Update content property for attachment by id
        ///
        /// Update a content property for attachment by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the attachment.
        public func put(_ body: ConfluenceKit.ContentPropertyUpdateRequest) -> Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "PUT", body: body, id: "updateAttachmentPropertyById")
        }

        /// Delete content property for attachment by id
        ///
        /// Deletes a content property for an attachment by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to attachment the page.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteAttachmentPropertyById")
        }
    }
}