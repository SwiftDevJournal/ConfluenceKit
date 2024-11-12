// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Attachments {
    public func attachmentID(_ attachmentID: String) -> WithAttachmentID {
        WithAttachmentID(path: "\(path)/\(attachmentID)")
    }

    public struct WithAttachmentID {
        /// Path: `/attachments/{attachment-id}`
        public let path: String
    }
}