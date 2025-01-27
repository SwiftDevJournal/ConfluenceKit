// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var whiteboards: Whiteboards {
        Whiteboards(path: "/whiteboards")
    }

    public struct Whiteboards {
        /// Path: `/whiteboards`
        public let path: String

        /// Create whiteboard
        ///
        /// Creates a whiteboard in the space.
        /// 
        /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
        /// Permission to view the corresponding space. Permission to create a whiteboard in the space.
        public func post(isPrivate: Bool? = nil, _ body: PostRequest) -> Request<PostResponse> {
            Request(path: path, method: "POST", query: makePostQuery(isPrivate), body: body, id: "createWhiteboard")
        }

        public struct PostResponse: Decodable {
            /// ID of the whiteboard.
            public var id: String?
            /// The content type of the object.
            public var type: String?
            /// The status of the content.
            public var status: ConfluenceKit.ContentStatus?
            /// Title of the whiteboard.
            public var title: String?
            /// ID of the parent content, or null if there is no parent content.
            public var parentID: String?
            /// Content type of the parent, or null if there is no parent.
            public var parentType: ConfluenceKit.ParentContentType?
            /// Position of the whiteboard within the given parent page tree.
            public var position: Int32?
            /// The account ID of the user who created this whiteboard originally.
            public var authorID: String?
            /// The account ID of the user who owns this whiteboard.
            public var ownerID: String?
            /// Date and time when the whiteboard was created. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
            public var createdAt: Date?
            public var version: ConfluenceKit.Version?
            public var links: ConfluenceKit.WhiteboardLinks?

            public init(id: String? = nil, type: String? = nil, status: ConfluenceKit.ContentStatus? = nil, title: String? = nil, parentID: String? = nil, parentType: ConfluenceKit.ParentContentType? = nil, position: Int32? = nil, authorID: String? = nil, ownerID: String? = nil, createdAt: Date? = nil, version: ConfluenceKit.Version? = nil, links: ConfluenceKit.WhiteboardLinks? = nil) {
                self.id = id
                self.type = type
                self.status = status
                self.title = title
                self.parentID = parentID
                self.parentType = parentType
                self.position = position
                self.authorID = authorID
                self.ownerID = ownerID
                self.createdAt = createdAt
                self.version = version
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decodeIfPresent(String.self, forKey: "id")
                self.type = try values.decodeIfPresent(String.self, forKey: "type")
                self.status = try values.decodeIfPresent(ConfluenceKit.ContentStatus.self, forKey: "status")
                self.title = try values.decodeIfPresent(String.self, forKey: "title")
                self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
                self.parentType = try values.decodeIfPresent(ConfluenceKit.ParentContentType.self, forKey: "parentType")
                self.position = try values.decodeIfPresent(Int32.self, forKey: "position")
                self.authorID = try values.decodeIfPresent(String.self, forKey: "authorId")
                self.ownerID = try values.decodeIfPresent(String.self, forKey: "ownerId")
                self.createdAt = try values.decodeIfPresent(Date.self, forKey: "createdAt")
                self.version = try values.decodeIfPresent(ConfluenceKit.Version.self, forKey: "version")
                self.links = try values.decodeIfPresent(ConfluenceKit.WhiteboardLinks.self, forKey: "_links")
            }
        }

        private func makePostQuery(_ isPrivate: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isPrivate, forKey: "private")
            return encoder.items
        }

        public struct PostRequest: Encodable {
            /// ID of the space.
            public var spaceID: String
            /// Title of the whiteboard.
            public var title: String?
            /// The parent content ID of the whiteboard.
            public var parentID: String?
            /// Providing a template key will add that template to the new whiteboard.
            public var templateKey: TemplateKey?
            /// If you provide a templateKey, the locale determines the language for creating the template. If you omit the locale, the user's locale is used.
            public var locale: Locale?

            /// Providing a template key will add that template to the new whiteboard.
            public enum TemplateKey: String, Codable, CaseIterable {
                case _2x2Prioritization = "2x2-prioritization"
                case _4lsRetro = "4ls-retro"
                case annualCalendar = "annual-calendar"
                case brainwriting
                case conceptMap = "concept-map"
                case crazy8s = "crazy-8s"
                case dailySync = "daily-sync"
                case disruptiveBrainstorm = "disruptive-brainstorm"
                case dotVoting = "dot-voting"
                case elevatorPitch = "elevator-pitch"
                case flowChart = "flow-chart"
                case gapAnalysis = "gap-analysis"
                case iceBreakers = "ice-breakers"
                case incidentPostmortem = "incident-postmortem"
                case journeyMappingKit = "journey-mapping-kit"
                case kanbanBoard = "kanban-board"
                case leanCoffee = "lean-coffee"
                case networkOfTeams = "network-of-teams"
                case orgChart = "org-chart"
                case piPlanning = "pi-planning"
                case prioritization
                case prioritizationExperiment = "prioritization-experiment"
                case productRoadmap = "product-roadmap"
                case productVisionBoard = "product-vision-board"
                case rice
                case sailboatRetro = "sailboat-retro"
                case serviceBlueprint = "service-blueprint"
                case simpleRetrospective = "simple-retrospective"
                case sprintPlanning = "sprint-planning"
                case stickyNotePack = "sticky-note-pack"
                case swimlanes
                case teamFormationGuide = "team-formation-guide"
                case timeline
                case timelineWorkflow = "timeline-workflow"
                case userStoryMap = "user-story-map"
                case workflow
                case visionBoard = "vision-board"
                case vennDiagram = "venn-diagram"
                case storyboard
                case actionPlan = "action-plan"
                case rootCauseAnalysis = "root-cause-analysis"
                case executiveSummary = "executive-summary"
                case stakeholderMapping = "stakeholder-mapping"
                case annualCalendar20252026 = "annual-calendar-2025-2026"
                case healthMonitor = "health-monitor"
                case okrPlanning = "okr-planning"
                case swotAnalysis = "swot-analysis"
                case pokerPlanning = "poker-planning"
                case fishboneDiagram = "fishbone-diagram"
                case riskAssessment = "risk-assessment"
                case boundedContext = "bounded-context"
                case hopesAndFears = "hopes-and-fears"
                case swimlaneVertical = "swimlane-vertical"
            }

            /// If you provide a templateKey, the locale determines the language for creating the template. If you omit the locale, the user's locale is used.
            public enum Locale: String, Codable, CaseIterable {
                case deDE = "de-DE"
                case csCZ = "cs-CZ"
                case koKR = "ko-KR"
                case frFR = "fr-FR"
                case itIT = "it-IT"
                case jaJP = "ja-JP"
                case nlNL = "nl-NL"
                case nbNO = "nb-NO"
                case daDK = "da-DK"
                case svSE = "sv-SE"
                case fiFI = "fi-FI"
                case ruRU = "ru-RU"
                case plPL = "pl-PL"
                case trTR = "tr-TR"
                case huHU = "hu-HU"
                case enGB = "en-GB"
                case enUS = "en-US"
                case ptBR = "pt-BR"
                case zhCN = "zh-CN"
                case zhTW = "zh-TW"
                case esES = "es-ES"
            }

            public init(spaceID: String, title: String? = nil, parentID: String? = nil, templateKey: TemplateKey? = nil, locale: Locale? = nil) {
                self.spaceID = spaceID
                self.title = title
                self.parentID = parentID
                self.templateKey = templateKey
                self.locale = locale
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(spaceID, forKey: "spaceId")
                try values.encodeIfPresent(title, forKey: "title")
                try values.encodeIfPresent(parentID, forKey: "parentId")
                try values.encodeIfPresent(templateKey, forKey: "templateKey")
                try values.encodeIfPresent(locale, forKey: "locale")
            }
        }
    }
}
