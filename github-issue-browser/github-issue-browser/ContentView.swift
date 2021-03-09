//
//  ContentView.swift
//  github-issue-browser
//
//  Created by Lor Worwag on 3/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var githubIssueBroswerVM: GithubIssueBrowserVM
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(githubIssueBroswerVM.issues) { issue in
                    NavigationLink(
                        destination: DetailView(githubIssueBrowserVM: githubIssueBroswerVM, issue: issue)
                            .onAppear{
                                githubIssueBroswerVM.fetchComments(urlString: issue.comments_url!)
                    }) {
                        CardView(issue: issue)
                    }
                }
            }.navigationTitle(Text("Issue Tracker"))
        }
        
//        Button(action: {
//            print("abc")
//            print(githubIssueBroswerVM.issues.count)
//            for i in githubIssueBroswerVM.issues {
//                print(i.number!)
//            }
//            print("cba")
//        }, label: { Text("click me") })
        
    }
    
    
}

struct CardView: View {
    var issue: IssueTemplate
    
    var body: some View {
        
        VStack {
            Text(issue.title!)
            HStack {
                Text("#\(issue.number!)")
                Text(issue.state!)
                Text(issue.created_at!)
            }
        }
    }
    
}











//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
