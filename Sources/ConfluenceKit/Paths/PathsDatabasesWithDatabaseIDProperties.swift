// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Databases.WithDatabaseID {
    public var properties: Properties {
        Properties(path: path + "/properties")
    }

    public struct Properties {
        /// Path: `/databases/{database-id}/properties`
        public let path: String
    }
}