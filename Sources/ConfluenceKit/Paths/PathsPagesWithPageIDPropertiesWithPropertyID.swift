// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Pages.WithPageID.Properties {
    public func propertyID(_ propertyID: Int) -> WithPropertyID {
        WithPropertyID(path: "\(path)/\(propertyID)")
    }

    public struct WithPropertyID {
        /// Path: `/pages/{page-id}/properties/{property-id}`
        public let path: String

        /// Get content property for page by id
        ///
        /// Retrieves a specific Content Property by ID that is attached to a specified page.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the page.
        public var get: Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "GET", id: "getPageContentPropertiesById")
        }

        /// Update content property for page by id
        ///
        /// Update a content property for a page by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the page.
        public func put(_ body: ConfluenceKit.ContentPropertyUpdateRequest) -> Request<ConfluenceKit.ContentProperty> {
            Request(path: path, method: "PUT", body: body, id: "updatePagePropertyById")
        }

        /// Delete content property for page by id
        ///
        /// Deletes a content property for a page by its id. 
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to edit the page.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deletePagePropertyById")
        }
    }
}
