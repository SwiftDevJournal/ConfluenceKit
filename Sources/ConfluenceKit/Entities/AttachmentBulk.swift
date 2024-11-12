// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AttachmentBulk: Codable {
    /// ID of the attachment.
    public var id: String?
    /// The status of the content.
    public var status: ContentStatus?
    /// Title of the comment.
    public var title: String?
    /// Date and time when the attachment was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
    public var createdAt: Date?
    /// ID of the containing page.
    /// 
    /// Note: This is only returned if the attachment has a container that is a page.
    public var pageID: String?
    /// ID of the containing blog post.
    /// 
    /// Note: This is only returned if the attachment has a container that is a blog post.
    public var blogPostID: String?
    /// ID of the containing custom content.
    /// 
    /// Note: This is only returned if the attachment has a container that is custom content.
    public var customContentID: String?
    /// Media Type for the attachment.
    public var mediaType: String?
    /// Media Type description for the attachment.
    public var mediaTypeDescription: String?
    /// Comment for the attachment.
    public var comment: String?
    /// File ID of the attachment. This is the ID referenced in `atlas_doc_format` bodies and is distinct from the attachment ID.
    public var fileID: String?
    /// File size of the attachment.
    public var fileSize: Int64?
    /// WebUI link of the attachment.
    public var webuiLink: String?
    /// Download link of the attachment.
    public var downloadLink: String?
    public var version: Version?
    public var links: AttachmentLinks?

    public init(id: String? = nil, status: ContentStatus? = nil, title: String? = nil, createdAt: Date? = nil, pageID: String? = nil, blogPostID: String? = nil, customContentID: String? = nil, mediaType: String? = nil, mediaTypeDescription: String? = nil, comment: String? = nil, fileID: String? = nil, fileSize: Int64? = nil, webuiLink: String? = nil, downloadLink: String? = nil, version: Version? = nil, links: AttachmentLinks? = nil) {
        self.id = id
        self.status = status
        self.title = title
        self.createdAt = createdAt
        self.pageID = pageID
        self.blogPostID = blogPostID
        self.customContentID = customContentID
        self.mediaType = mediaType
        self.mediaTypeDescription = mediaTypeDescription
        self.comment = comment
        self.fileID = fileID
        self.fileSize = fileSize
        self.webuiLink = webuiLink
        self.downloadLink = downloadLink
        self.version = version
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.status = try values.decodeIfPresent(ContentStatus.self, forKey: "status")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
        self.pageID = try values.decodeIfPresent(String.self, forKey: "pageId")
        self.blogPostID = try values.decodeIfPresent(String.self, forKey: "blogPostId")
        self.customContentID = try values.decodeIfPresent(String.self, forKey: "customContentId")
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "mediaType")
        self.mediaTypeDescription = try values.decodeIfPresent(String.self, forKey: "mediaTypeDescription")
        self.comment = try values.decodeIfPresent(String.self, forKey: "comment")
        self.fileID = try values.decodeIfPresent(String.self, forKey: "fileId")
        self.fileSize = try values.decodeIfPresent(Int64.self, forKey: "fileSize")
        self.webuiLink = try values.decodeIfPresent(String.self, forKey: "webuiLink")
        self.downloadLink = try values.decodeIfPresent(String.self, forKey: "downloadLink")
        self.version = try values.decodeIfPresent(Version.self, forKey: "version")
        self.links = try values.decodeIfPresent(AttachmentLinks.self, forKey: "_links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(createdAt, forKey: "createdAt")
        try values.encodeIfPresent(pageID, forKey: "pageId")
        try values.encodeIfPresent(blogPostID, forKey: "blogPostId")
        try values.encodeIfPresent(customContentID, forKey: "customContentId")
        try values.encodeIfPresent(mediaType, forKey: "mediaType")
        try values.encodeIfPresent(mediaTypeDescription, forKey: "mediaTypeDescription")
        try values.encodeIfPresent(comment, forKey: "comment")
        try values.encodeIfPresent(fileID, forKey: "fileId")
        try values.encodeIfPresent(fileSize, forKey: "fileSize")
        try values.encodeIfPresent(webuiLink, forKey: "webuiLink")
        try values.encodeIfPresent(downloadLink, forKey: "downloadLink")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(links, forKey: "_links")
    }
}
