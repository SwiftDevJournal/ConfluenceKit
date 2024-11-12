// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The type of space.
public enum SpaceType: String, Codable, CaseIterable {
    case global
    case collaboration
    case knowledgeBase = "knowledge_base"
    case personal
}