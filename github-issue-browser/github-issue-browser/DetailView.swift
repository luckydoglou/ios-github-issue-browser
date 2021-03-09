//
//  DetailView.swift
//  github-issue-browser
//
//  Created by Lor Worwag on 3/8/21.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var githubIssueBrowserVM: GithubIssueBrowserVM
//    @ObservedObject var comments: Array<CommentTemplate>
    @State var issue: IssueTemplate
    
    var body: some View {
        
        VStack {
            Text(issue.title!)
            Text("#\(issue.number!)")
            Text(issue.state!)
            
            Group {
                ForEach(githubIssueBrowserVM.comments) { comment in
                    Text(comment.user!.login)
                    Text(comment.body!)
                }
                
//            displayComments()
            }
        
        }
    
//    private func displayComments() -> some View {
////        githubIssueBrowserVM.fetchComments(urlString: issue.comments_url!)
//
//        return Group {
//            ForEach(githubIssueBrowserVM.comments) { comment in
//                Text(comment.user!.login)
//                Text(comment.body!)
//            }
//        }

    }
    
}












//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
