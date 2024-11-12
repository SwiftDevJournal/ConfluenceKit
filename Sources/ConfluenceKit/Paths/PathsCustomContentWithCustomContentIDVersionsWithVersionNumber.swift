// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.CustomContent.WithCustomContentID.Versions {
    public func versionNumber(_ versionNumber: Int) -> WithVersionNumber {
        WithVersionNumber(path: "\(path)/\(versionNumber)")
    }

    public struct WithVersionNumber {
        /// Path: `/custom-content/{custom-content-id}/versions/{version-number}`
        public let path: String

        /// Get version details for custom content version
        ///
        /// Retrieves version details for the specified custom content and version number.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the page.
        public var get: Request<ConfluenceKit.DetailedVersion> {
            Request(path: path, method: "GET", id: "getCustomContentVersionDetails")
        }
    }
}