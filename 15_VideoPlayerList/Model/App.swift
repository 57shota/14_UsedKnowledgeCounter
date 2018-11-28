//
//  App.swift
//  15_UsedKnowledgeCounter
//
//  Created by shota ito on 28/11/2018.
//  Copyright © 2018 shota ito. All rights reserved.
//

import Foundation

struct App {
    
    let appName: String
    let videoName: String
    let description: String
    let thumbnailName: String

    static func fetchVideos() -> [App] {
        
        let a2 = App(appName: "Stopwatch", videoName: "a2", description: "This is an example.", thumbnailName: "app2")
        let a3 = App(appName: "Omikuji", videoName: "a3", description: "This is an example.", thumbnailName: "app3")
        let a4 = App(appName: "Weather", videoName: "a4", description: "This is an example.", thumbnailName: "app4")
        let a5 = App(appName: "Here", videoName: "a5", description: "This is an example.", thumbnailName: "app5")
        
        return [a2, a3, a4, a5]
        
    }
}
