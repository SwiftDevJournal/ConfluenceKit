// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Attachments.WithAttachmentID.Versions {
    public func versionNumber(_ versionNumber: Int) -> WithVersionNumber {
        WithVersionNumber(path: "\(path)/\(versionNumber)")
    }

    public struct WithVersionNumber {
        /// Path: `/attachments/{attachment-id}/versions/{version-number}`
        public let path: String

        /// Get version details for attachment version
        ///
        /// Retrieves version details for the specified attachment and version number.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the attachment.
        public var get: Request<ConfluenceKit.DetailedVersion> {
            Request(path: path, method: "GET", id: "getAttachmentVersionDetails")
        }
    }
}