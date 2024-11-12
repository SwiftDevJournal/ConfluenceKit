// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The sort fields for child pages. The default sort direction is ascending by child-position. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
public enum ChildPageSortOrder: String, Codable, CaseIterable {
    case createdDate = "created-date"
    case minuscreatedDate = "-created-date"
    case id
    case minusid = "-id"
    case childPosition = "child-position"
    case minuschildPosition = "-child-position"
    case modifiedDate = "modified-date"
    case minusmodifiedDate = "-modified-date"
}