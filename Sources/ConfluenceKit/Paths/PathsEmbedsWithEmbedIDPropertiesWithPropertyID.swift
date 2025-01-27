// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Embeds.WithEmbedID.Properties {
    public func propertyID(_ propertyID: Int) -> WithPropertyID {
        WithPropertyID(path: "\(path)/\(propertyID)")
    }

    public struct WithPropertyID {
        /// Path: `/embeds/{embed-id}/properties/{property-id}`
        public let path: String

        /// Get content property for Smart Link in the content tree by id
        ///
        /// Retrieves a specific Content Property by ID that is attached to a specified Smart Link in the content tree.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the Smart Link in the content tree.
        public var get: Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "GET", id: "getSmartLinkContentPropertiesById")
        }

        /// Update content property for Smart Link in the content tree by id
        ///
        /// Update a content property for a Smart Link in the content tree by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the Smart Link in the content tree.
        public func put(_ body: ConfluenceKit.ContentPropertyUpdateRequest) -> Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "PUT", body: body, id: "updateSmartLinkPropertyById")
        }

        /// Delete content property for Smart Link in the content tree by id
        ///
        /// Deletes a content property for a Smart Link in the content tree by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the Smart Link in the content tree.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteSmartLinkPropertyById")
        }
    }
}
