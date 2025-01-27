// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The sort fields for content properties. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
public enum ContentPropertySortOrder: String, Codable, CaseIterable {
    case key
    case minuskey = "-key"
}
