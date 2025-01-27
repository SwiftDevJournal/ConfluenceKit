// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Version: Codable {
    /// Date and time when the version was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
    public var createdAt: Date?
    /// Message associated with the current version.
    public var message: String?
    /// The version number.
    public var number: Int32?
    /// Describes if this version is a minor version. Email notifications and activity stream updates are not created for minor versions.
    public var isMinorEdit: Bool?
    /// The account ID of the user who created this version.
    public var authorID: String?

    public init(createdAt: Date? = nil, message: String? = nil, number: Int32? = nil, isMinorEdit: Bool? = nil, authorID: String? = nil) {
        self.createdAt = createdAt
        self.message = message
        self.number = number
        self.isMinorEdit = isMinorEdit
        self.authorID = authorID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
        self.message = try values.decodeIfPresent(String.self, forKey: "message")
        self.number = try values.decodeIfPresent(Int32.self, forKey: "number")
        self.isMinorEdit = try values.decodeIfPresent(Bool.self, forKey: "minorEdit")
        self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(createdAt, forKey: "createdAt")
        try values.encodeIfPresent(message, forKey: "message")
        try values.encodeIfPresent(number, forKey: "number")
        try values.encodeIfPresent(isMinorEdit, forKey: "minorEdit")
        try values.encodeIfPresent(authorID, forKey: "authorId")
    }
}
