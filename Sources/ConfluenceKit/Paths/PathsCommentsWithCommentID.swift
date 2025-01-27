// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Comments {
    public func commentID(_ commentID: Int) -> WithCommentID {
        WithCommentID(path: "\(path)/\(commentID)")
    }

    public struct WithCommentID {
        /// Path: `/comments/{comment-id}`
        public let path: String
    }
}
