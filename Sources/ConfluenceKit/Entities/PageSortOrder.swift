// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The sort fields for pages. The default sort direction is ascending. To sort in descending order, append a `-` character before the sort field. For example, `fieldName` or `-fieldName`.
public enum PageSortOrder: String, Codable, CaseIterable {
    case id
    case minusid = "-id"
    case createdDate = "created-date"
    case minuscreatedDate = "-created-date"
    case modifiedDate = "modified-date"
    case minusmodifiedDate = "-modified-date"
    case title
    case minustitle = "-title"
}
