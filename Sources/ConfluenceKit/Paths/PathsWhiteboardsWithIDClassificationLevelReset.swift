// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Whiteboards.WithID.ClassificationLevel {
    public var reset: Reset {
        Reset(path: path + "/reset")
    }

    public struct Reset {
        /// Path: `/whiteboards/{id}/classification-level/reset`
        public let path: String

        /// Reset whiteboard classification level
        ///
        /// Resets the [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
        /// for a specific whiteboard for the space 
        /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/).
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// 'Permission to access the Confluence site ('Can use' global permission) and permission to view the whiteboard.
        public func post(status: PostRequest.Status) -> Request<Void> {
            Request(path: path, method: "POST", body: PostRequest(status: status), id: "postWhiteboardClassificationLevel")
        }

        public struct PostRequest: Encodable {
            /// Status of the content.
            public var status: Status

            /// Status of the content.
            public enum Status: String, Codable, CaseIterable {
                case current
            }

            public init(status: Status) {
                self.status = status
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(status, forKey: "status")
            }
        }
    }
}
