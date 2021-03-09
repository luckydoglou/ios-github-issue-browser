//
//  IssueTemplate.swift
//  github-issue-browser
//
//  useful resouce:
//      json handling: https://matteomanferdini.com/codable/
//
//  Created by Lor Worwag on 3/8/21.
//

import Foundation

struct IssueTemplate: Codable, Identifiable {
    
    let url: String?
//    let repository_url: String
//    let labels_url: String
    var comments_url: String?
//    var events_url: String
//    var html_url: String
    var id: Int
//    var node_id: String
    var number: Int?
    var title: String?
    var user: UserTemplate?
//    var labels: Array<>
    var state: String?
    var locked: Bool
//    var assignee: null
//    var assignees: []
//    var milestone: {}
    var comments: Int?
    var created_at: String?
    var updated_at: String?
    var closed_at: String?
//    var author_association: String
//    var active_lock_reason: null
    var body: String?
//    var performed_via_github_app: null

    
}

struct UserTemplate: Codable {
    var login: String
    var id: Int
//    var node_id: String
//    var avatar_url: String
//    var gravatar_id: String
//    var url: String
//    var html_url: String
//    var followers_url: String
//    var following_url: String
//    var gists_url: String
//    var starred_url: String
//    var subscriptions_url: String
//    var organizations_url: String
//    var repos_url: String
//    var events_url: String
//    var received_events_url: String
//    var type: String
//    var site_admin: Bool
}
//
struct LabelTemplate: Codable {
    var id: Int
//    var node_id: String
//    var url: String
    var name: String
//    var color: String
//    var default: Bool
//    var description:
}

struct CommentTemplate: Codable, Identifiable {
    var url: String?
    var issue_url: String?
    var id: Int
    var user: UserTemplate?
    var created_at: String?
    var body: String?
}
