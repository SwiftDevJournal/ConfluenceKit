// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Spaces.WithID.ClassificationLevel {
    public var `default`: Default {
        Default(path: path + "/default")
    }

    public struct Default {
        /// Path: `/spaces/{id}/classification-level/default`
        public let path: String

        /// Get space default classification level
        ///
        /// Returns the [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/) 
        /// for a specific space.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// 'Permission to access the Confluence site ('Can use' global permission) and permission to view the space.
        public var get: Request<ConfluenceKit.ClassificationLevel> {
            Request(path: path, method: "GET", id: "getSpaceDefaultClassificationLevel")
        }

        /// Update space default classification level
        ///
        /// Update the [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/) 
        /// for a specific space.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// 'Permission to access the Confluence site ('Can use' global permission) and 'Admin' permission for the space.
        public func put(_ body: PutRequest) -> Request<Void> {
            Request(path: path, method: "PUT", body: body, id: "putSpaceDefaultClassificationLevel")
        }

        public struct PutRequest: Encodable {
            /// The ID of the classification level.
            public var id: String
            /// Status of the content.
            public var status: Status

            /// Status of the content.
            public enum Status: String, Codable, CaseIterable {
                case current
                case draft
            }

            public init(id: String, status: Status) {
                self.id = id
                self.status = status
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(id, forKey: "id")
                try values.encode(status, forKey: "status")
            }
        }

        /// Delete space default classification level
        ///
        /// Returns the [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/) 
        /// for a specific space.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// 'Permission to access the Confluence site ('Can use' global permission) and 'Admin' permission for the space.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteSpaceDefaultClassificationLevel")
        }
    }
}
