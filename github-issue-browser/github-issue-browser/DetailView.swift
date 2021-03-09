//
//  DetailView.swift
//  github-issue-browser
//
//  Created by Lor Worwag on 3/8/21.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var githubIssueBrowserVM: GithubIssueBrowserVM
    @State var issue: IssueTemplate
    
    var body: some View {
        
        VStack {
            Text(issue.title!)
            Text("#\(issue.number!)")
            Text(issue.state!)
            Text(issue.comments_url!)

            Text("\(githubIssueBrowserVM.comments.count)")

            
        }
    }
    
}













//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
