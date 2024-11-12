// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.DataPolicies {
    public var metadata: Metadata {
        Metadata(path: path + "/metadata")
    }

    public struct Metadata {
        /// Path: `/data-policies/metadata`
        public let path: String

        /// Get data policy metadata for the workspace
        ///
        /// Returns data policy metadata for the workspace.
        /// 
        /// **[Permissions](#permissions) required:**
        /// Only apps can make this request.
        /// Permission to access the Confluence site ('Can use' global permission).
        public var get: Request<ConfluenceKit.DataPolicyMetadata> {
            Request(path: path, method: "GET", id: "getDataPolicyMetadata")
        }
    }
}