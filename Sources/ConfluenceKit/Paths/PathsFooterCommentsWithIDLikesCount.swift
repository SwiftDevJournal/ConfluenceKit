// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.FooterComments.WithID.Likes {
    public var count: Count {
        Count(path: path + "/count")
    }

    public struct Count {
        /// Path: `/footer-comments/{id}/likes/count`
        public let path: String

        /// Get like count for footer comment
        ///
        /// Returns the count of likes of specific footer comment.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the content of the page/blogpost and its corresponding space.
        public var get: Request<GetResponse> {
            Request(path: path, method: "GET", id: "getFooterLikeCount")
        }

        /// Integer
        public struct GetResponse: Decodable {
            /// The count number
            public var count: Int64?

            public init(count: Int64? = nil) {
                self.count = count
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
            }
        }
    }
}
